/*
 * EBS test variables
 */

variable "region" {
  type = "string"
}

variable "user_secret_profile" {
  description = "The .aws credentials profile to use to connect to AWS"
}
