

##############################################################################
# LABEL MANAGEMENT
##############################################################################

module "label" {
  source     = "git::https://github.com/cloudposse/terraform-null-label.git?ref=tags/0.16.0"
  name       = var.name
  namespace  = var.namespace
  stage      = var.environment
  tags       = var.tags
  delimiter  = var.delimiter
  attributes = var.attributes
  enabled    = var.enabled

  label_order = var.label_order
}