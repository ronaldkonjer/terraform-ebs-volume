/*
 * EBS test
 */

provider "aws" {
  region = "${var.region}"
}

module "ebs" {
  source = ".."
  volumes_per_az = 2
  role = "app"
  app_name = "test"
  environment = "${var.environment}"
  availability_zones = ["${var.availability_zone}"]
  type = "standard"
}

module "ebs-iops" {
  source = ".."
  volumes_per_az = 2
  role = "db"
  app_name = "test"
  environment = "${var.environment}"
  availability_zones = ["${var.availability_zone}"]
  iops = 500
}
