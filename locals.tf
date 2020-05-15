/*
 * ebs-volume local variables
 */

locals {
  volume_tag = "${module.label.id}-${var.vol}"
}

