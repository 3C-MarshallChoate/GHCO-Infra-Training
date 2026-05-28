output "interface_endpoint_ids" {
  description = "Interface endpoint ids keyed by service short name."
  value       = { for service, endpoint in aws_vpc_endpoint.interface : service => endpoint.id }
}

output "interface_endpoint_count" {
  description = "Number of interface endpoints planned by this module."
  value       = length(aws_vpc_endpoint.interface)
}

output "private_route_table_ids" {
  description = "Private route table ids supplied to the module."
  value       = var.private_route_table_ids
}
