# EBS Volumes Test

Test for the ebs-volume module.

## Details

The test creates volumes in all availability zones in the specified region.
There are 3 cases: type gp2, no backups, and type io1. The following command
should be executed prior to running the test:

    aws dlm create-default-role

## Warning

This test will create EBS volumes which will incur a cost. The test also
creates a DLM policy that will take snapshots every 24 hours.
