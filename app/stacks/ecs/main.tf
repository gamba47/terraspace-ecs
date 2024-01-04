# This is where you put your resource declaration
module "ec2" {
  source                           = "../../modules/ec2"
  ec2_name_prefix                  = var.ec2_name_prefix
  ec2_image_id                     = var.ec2_image_id
  ec2_instance_type                = var.ec2_instance_type
  ec2_key_name                     = var.ec2_key_name
  ec2_iam_instance_profile_name    = var.ec2_iam_instance_profile_name
  ec2_volume_size                  = var.ec2_volume_size
  ec2_ecs_alb_name                 = var.ec2_ecs_alb_name
  ec2_tags                         = var.ec2_tags
  ec2_ecs_target_group_name        = var.ec2_ecs_target_group_name
  ec2_ecs_target_group_port        = var.ec2_ecs_target_group_port
  ec2_ecs_target_group_protocol    = var.ec2_ecs_target_group_protocol
  ec2_ecs_target_group_target_type = var.ec2_ecs_target_group_target_type
}
