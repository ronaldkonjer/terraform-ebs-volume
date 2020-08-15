/*
 * IAM role for DLM
 */

data aws_iam_policy_document dlm-assume-role {
  statement {
    principals {
      identifiers = ["dlm.amazonaws.com"]
      type = "Service"
    }
    actions = ["sts:AssumeRole"]
  }
}

data aws_iam_policy_document dlm {
  statement {
    sid = "snapshot"
    actions = [
      "ec2:CreateSnapshot",
      "ec2:CreateSnapshots",
      "ec2:DeleteSnapshot",
      "ec2:DescribeVolumes",
      "ec2:DescribeInstances",
      "ec2:DescribeSnapshots"
    ]
    resources = ["*"]
  }
  statement {
    sid = "tags"
    actions = [
      "ec2:CreateTags"
    ]
    resources = ["arn:aws:ec2:*::snapshot/*"]
  }
}

resource aws_iam_role dlm {
  name_prefix = "test-"
  assume_role_policy = data.aws_iam_policy_document.dlm-assume-role.json
}

resource aws_iam_role_policy dlm {
  policy = data.aws_iam_policy_document.dlm.json
  role = aws_iam_role.dlm.id
}
