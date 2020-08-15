/*
 * EBS test outputs
 */

output ebs-ids {
  value = module.ebs.volume_ids
}

output ebs-no-backup {
  value = module.ebs-no-backup.volume_ids
}

output ebs-iops-ids {
  value = module.ebs-iops.volume_ids
}
