/*
 * EBS configuration
 */

resource "aws_ebs_volume" "volume" {
  count = "${var.type != "io1" ? var.volumes_per_az * length(var.availability_zones) : 0}"
  availability_zone = "${element(var.availability_zones, count.index)}"
  type = "${var.type}"
  size = "${var.size}"
  tags {
    Name = "${var.name}-${var.role}${format("%02d", count.index+1)}"
  }
}

resource "aws_ebs_volume" "iops-volume" {
  count = "${var.type == "io1" ? var.volumes_per_az * length(var.availability_zones) : 0}"
  availability_zone = "${element(var.availability_zones, count.index)}"
  type = "${var.type}"
  size = "${var.size}"
  iops = "${var.iops}"
  tags {
    Name = "${var.name}-${var.role}${format("%02d", count.index+1)}"
  }
}
