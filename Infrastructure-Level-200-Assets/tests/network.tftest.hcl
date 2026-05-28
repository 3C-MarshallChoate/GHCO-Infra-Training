mock_provider "aws" {}

run "default_interface_endpoint_shape" {
  command = plan

  module {
    source = "../modules/network"
  }

  variables {
    name                    = "catalog-dev"
    aws_region              = "us-east-1"
    vpc_id                  = "vpc-00000000000000000"
    private_subnet_ids      = ["subnet-11111111111111111", "subnet-22222222222222222"]
    private_route_table_ids = ["rtb-11111111111111111", "rtb-22222222222222222"]
  }

  assert {
    condition     = output.interface_endpoint_count == 3
    error_message = "The module should preserve the three default interface endpoints."
  }

  assert {
    condition     = length(output.private_route_table_ids) == 2
    error_message = "Route table ids should remain explicit inputs for review."
  }
}
