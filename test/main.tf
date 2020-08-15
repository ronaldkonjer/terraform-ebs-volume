/*
 * EBS test
 */

provider aws {
  region = var.region
}

data aws_availability_zones current {}

module ebs {
  source = "./.."
  name = "test-gp2"
  availability_zones = data.aws_availability_zones.current.names
  volumes_per_az = 2
  size = 30
}

module ebs-no-backup {
  source = "./.."
  name = "test-no-backup"
  availability_zones = data.aws_availability_zones.current.names
  size = 30
  enable_backup = false
}

module "ebs-iops" {
  source = "./.."
  name = "test-io1"
  availability_zones = data.aws_availability_zones.current.names
  type = "io1"
  size = 50
  iops = 500
}
