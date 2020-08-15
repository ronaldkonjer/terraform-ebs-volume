/*
 * EBS variables
 */

variable name {
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
  default = 1
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
