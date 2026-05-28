resource "aws_security_group" "interface_endpoint" {
  name        = "${local.name_prefix}-interface-endpoint"
  description = "Allows HTTPS traffic from private workloads to interface endpoints."
  vpc_id      = var.vpc_id

  ingress {
    description = "HTTPS from private subnets"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }

  egress {
    description = "HTTPS to AWS service endpoints"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(local.common_tags, {
    Name = "${local.name_prefix}-interface-endpoint"
  })
}

resource "aws_vpc_endpoint" "interface" {
  for_each = var.interface_endpoint_services

  vpc_id              = var.vpc_id
  service_name        = "com.amazonaws.${var.aws_region}.${each.value}"
  vpc_endpoint_type   = "Interface"
  subnet_ids          = var.private_subnet_ids
  security_group_ids  = [aws_security_group.interface_endpoint.id]
  private_dns_enabled = true

  tags = merge(local.common_tags, {
    Name    = "${local.name_prefix}-${replace(each.value, ".", "-")}-endpoint"
    Service = each.value
  })
}
