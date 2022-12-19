aws_region           = "us-east-1"
clusters_name_prefix = "eksdemo1"
vpc_block            = "10.0.0.0/16"
public_subnets_prefix_list = [
  "10.0.0.0/24",
  "10.0.32.0/24",
  "10.0.64.0/24",
]
private_subnets_prefix_list = [
  "10.0.96.0/24",
  "10.0.128.0/24",
  "10.0.160.0/24",
]