/*
 * EBS test
 */

provider "aws" {
  region  = var.region
  profile = var.user_secret_profile
}

data "aws_availability_zones" "current" {}

module "ebs" {
  source             = ".."
  name               = "app"
  environment        = "test"
  vol                = "log"
  availability_zones = data.aws_availability_zones.current.names
  volumes_per_az     = 2
  size               = 30
  type               = "standard"
}

module "ebs-iops" {
  source             = ".."
  name               = "db"
  environment        = "test"
  availability_zones = data.aws_availability_zones.current.names
  size               = 50
  iops               = 500
}
