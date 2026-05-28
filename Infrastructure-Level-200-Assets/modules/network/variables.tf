variable "name" {
  description = "Name prefix for network resources."
  type        = string
}

variable "aws_region" {
  description = "AWS region used to construct regional service endpoint names."
  type        = string
}

variable "vpc_id" {
  description = "VPC id where endpoints are created."
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnet ids used by interface endpoints."
  type        = list(string)
}

variable "private_route_table_ids" {
  description = "Private route table ids associated with private workloads."
  type        = list(string)
}

variable "interface_endpoint_services" {
  description = "AWS service short names for interface endpoints."
  type        = set(string)
  default     = ["ecr.api", "ecr.dkr", "logs"]
}

variable "tags" {
  description = "Tags applied to network resources."
  type        = map(string)
  default     = {}
}
