/*
 * ebs-volume local variables
 */

locals {
  volume_tag = "${var.name}-${var.app}${var.vol}"
}
