# This is where you put your outputs declaration
# This is where you put your outputs declaration
output "ecs_lt_id" {
  value = module.ec2.ecs_lt_id
}

output "tg_arn" {
  value = module.ec2.tg_arn
}

output "tg" {
  value = module.ec2.tg
}
