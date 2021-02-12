/*
 * EBS DLM resources (for backup)
 */

resource aws_dlm_lifecycle_policy backup {
  count = var.enable_backup ? 1 : 0
  description = "${module.this.id} snapshots"
  execution_role_arn = local.dlm_iam_role
  policy_details {
    resource_types = ["VOLUME"]
    target_tags = {
      DLM = var.name
    }
    schedule {
      name = var.name
      create_rule {
        interval = var.dlm_period
        times = [local.backup_start]
      }
      retain_rule {
        count = var.dlm_retention
      }
    }
  }
}
