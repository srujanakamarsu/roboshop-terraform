data "aws_subnets" "subnets" {
  filter {
    name   = "vpc-id"
    values = [var.default_vpc_id]
  }
}

data "dns_a_record_set" "private_alb" {
  host = var.private_alb_name
}
