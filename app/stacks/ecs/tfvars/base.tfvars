# Required variables:
ec2_tags = {
  Application = "ECS"
  Owner       = "Terraspace"
  Environment = "<%= Terraspace.env %>"
}


# Optional variables:
# ec2_name_prefix                  = "ecs-template"
# ec2_image_id                     = "ami-09c0b8e7f21923ac0"
# ec2_instance_type                = "t2.micro"
# ec2_key_name                     = "ec2ecsglog"
# ec2_iam_instance_profile_name    = "ecsInstanceRole"
# ec2_volume_size                  = "30"
# ec2_ecs_alb_name                 = "ecs-alb"
# ec2_ecs_target_group_name        = "ec2_ecs_target_group"
# ec2_ecs_target_group_port        = "80"
# ec2_ecs_target_group_protocol    = "http"
# ec2_ecs_target_group_target_type = "ip"
