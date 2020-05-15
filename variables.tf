/*
 * EBS variables
 */

variable "name" {
  type        = string
  description = "name to use in tags"
}

variable "vol" {
  description = "volume name to use in tags"
  default     = ""
}

variable "availability_zones" {
  type        = list(string)
  description = "list of availability zones"
}

variable "volumes_per_az" {
  description = "number of volumes per availability zone"
  default     = 1
}

variable "type" {
  description = "EBS volume type (standard, gp2, io1, st1, etc.)"
  default     = "standard"
}

variable "size" {
  type        = string
  description = "volume size (GB)"
}

variable "iops" {
  description = "I/O operations per second (max is 50x volume size)"
  default     = 0
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

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)"
}


