# This is where you put your outputs declaration
output "vpc_id" {
  value = module.network.vpc_id
}

output "security_group_id" {
  value = module.network.security_group_id
}

output "subnet_public_id_a" {
  value = module.network.aws_subnet.my_private_subnet_a.id
}

//output "subnet_public_id_b" {
//  value = module.network.my_public_subnet_b.id
//}
//
//output "subnet_id_a" {
//  value = module.network.my_private_subnet_a.id
//}
//
//output "subnet_id_b" {
//  value = module.network.my_private_subnet_b.id
//}
//
//
