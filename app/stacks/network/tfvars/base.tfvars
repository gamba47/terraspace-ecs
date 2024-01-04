# Optional variables:
# network_vpc_cidr_block              = "10.0.0.0/16"
# network_enable_dns_support          = true
# network_enable_dns_hostnames        = true
# network_subnet_cidr_block_public_1  = "10.0.1.0/24"
# network_subnet_cidr_block_public_2  = "10.0.2.0/24"
# network_subnet_cidr_block_private_1 = "10.0.3.0/24"
# network_subnet_cidr_block_private_2 = "10.0.4.0/24"
# allowed_ip                          = "0.0.0.0/0"
# network_security_group_name         = "ECS-sg"
# network_security_group_description  = "Allow inbound and outbound traffic"
# network_az_a                        = "us-east-2a"
# network_az_b                        = "us-east-2b"


network_tags = {
  Owner       = "terraspace",
  Rol         = "ecs"
  Environment = "<%= Terraspace.env %>"
}
