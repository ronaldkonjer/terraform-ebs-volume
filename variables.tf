/*
 * EBS variables
 */

variable "name" {
  type = "string"
  description = "name to use in tag"
}

variable "role" {
  type = "string"
  description = "role to use in tag"
}

variable "availability_zones" {
  type = "list"
  description = "list of availability zones"
}

variable "volumes_per_az" {
  description = "number of volumes per availability zone"
  default = 1
}

variable "type" {
  description = "EBS volume type (standard, gp2, io1, st1, etc.)"
  default = "standard"
}

variable "size" {
  type = "string"
  description = "volume size (GB)"
}

variable "iops" {
  description = "I/O operations per second (max is 50x volume size)"
  default = 0
}
