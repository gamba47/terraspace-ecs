# This is where you put your resource declaration
module "network" {
  source                              = "../../modules/network"
  network_vpc_cidr_block              = var.network_vpc_cidr_block
  network_tags                        = var.network_tags
  network_enable_dns_support          = var.network_enable_dns_support
  network_enable_dns_hostnames        = var.network_enable_dns_hostnames
  network_subnet_cidr_block_public_1  = var.network_subnet_cidr_block_public_1
  network_subnet_cidr_block_public_2  = var.network_subnet_cidr_block_public_2
  network_subnet_cidr_block_private_1 = var.network_subnet_cidr_block_private_1
  network_subnet_cidr_block_private_2 = var.network_subnet_cidr_block_private_2
  allowed_ip                          = var.allowed_ip
  network_security_group_name         = var.network_security_group_name
  network_security_group_description  = var.network_security_group_description
  network_az_a                        = var.network_az_a
  network_az_b                        = var.network_az_b
}
