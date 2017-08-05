/*
 * EBS outputs
 */

output "volume_ids" {
  value = "${join(",", aws_ebs_volume.volume.*.id, aws_ebs_volume.iops-volume.*.id)}"
}
