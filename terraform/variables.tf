variable "aws_region" {
    default = us-east-1
    type = string
}

variable "instance_type" {
    type = map(string)
    default = {
        "dev" = "t3.small",
        "prod" = "t3.medium"
    }
}