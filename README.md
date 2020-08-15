# EBS Volume Module

## Description

This module creates EBS volumes and optionally a DLM policy for automated
snapshots.

## Input Variables

| Name | Type | Description | Default |
| ---- | ---- | ----------- | ------- |
| availability_zones | list(string) | list of availability zones |  |
| dlm_iam_role_arn | string | IAM role for DLM service | "" |
| dlm_period | number | frequency of snapshot in hours (valid values are 1, 2, 3, 4, 6, 8, 12, or 24) | 24 |
| dlm_retention | number | retention count | 7 |
| dlm_start_time | string | start time in 24 hour format (default is a random time) | "" |
| enable_backup | bool | flag to turn on backups | true |
| iops | number | I/O operations per second (only for type io1) | 100 |
| name | string | name to use in tags |  |
| size | number | volume size (GB) |  |
| type | string | EBS volume type (gp2, io1, st1, sc1) | gp2 |
| volumes_per_az | number | number of volumes per availability zone | 1 |

If type is io1 then the iops parameter is used; otherwise, it is ignored.

## Outputs

| Name | Description |
| ---- | ----------- |
| volume_ids | EBS volume IDs |
