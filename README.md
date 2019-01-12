# EBS Volume Module

## Description

This module creates EBS volumes.

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
