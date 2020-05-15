

##############################################################################
# LABEL MANAGEMENT
##############################################################################

module "label" {
  source     = "git::https://github.com/cloudposse/terraform-null-label.git?ref=tags/0.16.0"
  name       = var.name
  namespace  = var.namespace
  stage      = var.environment
  tags       = var.tags
  delimiter  = "-"
  attributes = []
  enabled    = true

  label_order = ["name", "namespace", "stage"]
}