/*
 * EBS variables
 */

variable "name" {
  type = string
  description = "name to use in tags"
}

variable availability_zones {
  type = list(string)
  description = "list of availability zones"
}

variable volumes_per_az {
  type = number
  description = "number of volumes per availability zone"
  default     = 1
}

variable type {
  type = string
  description = "EBS volume type (gp2, io1, st1, sc1)"
  default = "gp2"
}

variable size {
  type = number
  description = "volume size (GB)"
}

variable iops {
  type = number
  description = "I/O operations per second (only for type io1)"
  default = 100
}

variable enable_backup {
  type = bool
  description = "flag to turn on backups"
  default = true
}

variable dlm_iam_role_arn {
  type = string
  description = "IAM role for DLM service (default is role created by aws dlm create-default-role)"
  default = ""
}

variable dlm_period {
  type = number
  description = "frequency of snapshot in hours (valid values are 1, 2, 3, 4, 6, 8, 12, or 24)"
  default = 24
}

variable dlm_retention {
  type = number
  description = "retention count"
  default = 7
}

variable dlm_start_time {
  type = string
  description = "start time in 24 hour format (default is a random time)"
  default = ""
}

variable "environment" {
  description = "Stage, e.g. ‘prod’, ‘staging’, ‘dev’, or ‘test’"
  type = string
}

variable "namespace" {
  type        = string
  description = "Namespace, which could be your organization name or abbreviation, (e.g. `eg` or `cp`)"
  default     = "cg"
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `name`, `namespace`, `stage` and `attributes`"
}

variable "enabled" {
  description = "Set to false to prevent the module from creating any resources"
  default     = "true"
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `1`)"
}

variable "label_order" {
  type        = list(string)
  default     = []
  description = "The naming order of the id output and Name tag"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)"
}

