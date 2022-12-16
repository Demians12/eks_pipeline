resource "aws_s3_bucket" "s3_state_bucket" {
    bucket = "pipeline-source-test-workshop10"
    versioning {
        enabled = true
    }
    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {
                sse_algorithm = "AES256"
            }
        }
    }
    object_lock_configuration {
        object_lock_enabled = "Enabled"
    }
    tags = {
        Name = "S3 Remote Terraform State"
    }
}

resource "aws_dynamodb_table" "terraform-lock" {
    name           = "pipeline-source-test-workshop10"
    read_capacity  = 5
    write_capacity = 5
    hash_key       = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
    tags = {
        "Name" = "DynamoDB Terraform State Lock Table"
    }
}


resource "aws_s3_bucket_policy" "bucket_policy" {
    bucket = aws_s3_bucket.s3_state_bucket.id
    policy = <<EOF
    {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:*",
                "s3-object-lambda:*"
            ],
            "Resource": "arn:aws:s3:::demiansx-state-backend"
        }
    ]
}
EOF
}