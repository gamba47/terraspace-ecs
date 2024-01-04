# This is where you put your outputs declaration
output "vpc_id" {
  value = module.network.vpc_id
}

output "security_group_id" {
  value = module.network.security_group_id
}

output "subnet_public_id_a" {
  value = module.network.subnet_public_id_a
}

output "subnet_public_id_b" {
  value = module.network.subnet_public_id_b
}

output "subnet_id_a" {
  value = module.network.subnet_id_a
}

output "subnet_id_b" {
  value = module.network.subnet_id_b
}
