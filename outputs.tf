/*
 * EBS outputs
 */

output "volume_ids" {
  description = "EBS volume IDs"
  value = local.volume_ids
}
