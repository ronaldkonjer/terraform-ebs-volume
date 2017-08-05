/*
 * EBS test variables
 */

variable "region" {
  type = "string"
  description = "region for testing"
}

variable "environment" {
  type = "string"
  description = "environment for testing"
}

variable "availability_zone" {
  type = "string"
  description = "AZ for the volume"
}
