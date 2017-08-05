/*
 * EBS configuration
 */

resource "aws_ebs_volume" "volume" {
  count = "${var.iops == 0 ? var.volumes_per_az * length(var.availability_zones) : 0}"
  availability_zone = "${element(var.availability_zones, count.index % length(var.availability_zones))}"
  type = "${var.type}"
  size = "${var.size}"
  tags {
    Name = "${var.environment}-${var.app_name}-${var.role}-${format("%02d", count.index+1)}"
  }
}

resource "aws_ebs_volume" "iops-volume" {
  count = "${var.iops > 0 ? var.volumes_per_az * length(var.availability_zones) : 0}"
  availability_zone = "${element(var.availability_zones, count.index % length(var.availability_zones))}"
  type = "io1"
  size = "${var.size}"
  iops = "${var.iops}"
  tags {
    Name = "${var.environment}-${var.app_name}-${var.role}-${format("%02d", count.index+1)}"
  }
}
