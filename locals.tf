/*
 * ebs-volume local variables
 */

resource random_integer hour {
  max = 23
  min = 0
  keepers = {
    ebs_volume_ids = local.volume_id_list
  }
}

resource random_integer minute {
  max = 59
  min = 0
  keepers = {
    ebs_volume_ids = local.volume_id_list
  }
}

data aws_caller_identity current {}

locals {
volume_tag = "${module.label.id}-${var.vol}"
  num_volumes = length(var.availability_zones) * var.volumes_per_az
  volume_ids = concat(aws_ebs_volume.volumes[*].id, aws_ebs_volume.iops-volumes[*].id)
  volume_id_list = join(",", local.volume_ids)
  dlm_iam_role = length(var.dlm_iam_role_arn) > 0 ? var.dlm_iam_role_arn : "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/AWSDataLifecycleManagerDefaultRole"
  backup_start = length(var.dlm_start_time) > 0 ? var.dlm_start_time : format("%02d:%02d", random_integer.hour.result, random_integer.minute.result)
}

