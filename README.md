# EBS Volume Module

## Description

This module creates EBS volumes.

## Versions

If you wish to lock into a specific version of this module you can use the
`ref` query parameter. Currently the version released in August 2017 is labeled
with tag `VER_1`. Use the following module source parameter to select this
version:

    source = "github.com/conrad-mukai/terraform-ebs-volume.git?ref=VER_1"

## Variables

| Name | Description | Default |
| ---- | ----------- | ------- |
| `app` | app to use in tags | |
| `availability_zones` | list of availability zones | |
| `iops` | I/O operations per second (max is 50x volume size) | 0 |
| `name` | name to use in tag | |
| `size` | EBS storage size (GB) | |
| `type` | EBS volume type (standard, gp2, io1, st1, etc.) | standard |
| `vol` | volume name to use in tags | |
| `volumes_per_az` | number of volumes per availability zone | 1 |

If the type is io1 then the iops parameter must be specified.

## Outputs

| Name | Description |
| ---- | ----------- |
| `volume_ids` | list of volume IDs |
