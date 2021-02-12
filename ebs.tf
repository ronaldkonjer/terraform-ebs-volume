/*
 * EBS configuration
 */

resource aws_ebs_volume volumes {
  count = var.type != "io1" ? local.num_volumes : 0
  availability_zone = element(var.availability_zones, count.index)
  type = var.type
  size = var.size
  tags = {
    Name = "${var.name}${format("%02d", count.index+1)}"
    DLM = var.name
  }
}

resource aws_ebs_volume iops-volumes {
  count = var.type == "io1" ? local.num_volumes : 0
  availability_zone = element(var.availability_zones, count.index)
  type = var.type
  size = var.size
  iops = var.iops
  tags = merge(
  module.label.tags,
  {    Name = "${var.name}${format("%02d", count.index+1)}"
    DLM = var.name
  })
}
