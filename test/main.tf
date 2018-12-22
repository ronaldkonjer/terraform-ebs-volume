/*
 * EBS test
 */

provider "aws" {
  region = "${var.region}"
}

data "aws_availability_zones" "current" {}

module "ebs" {
  source = ".."
  name = "test"
  app = "app"
  vol = "log"
  availability_zones = "${data.aws_availability_zones.current.names}"
  volumes_per_az = 2
  size = 30
  type = "standard"
}

module "ebs-iops" {
  source = ".."
  name = "test"
  app = "db"
  availability_zones = "${data.aws_availability_zones.current.names}"
  size = 50
  iops = 500
}
