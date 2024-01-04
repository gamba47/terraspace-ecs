# Required variables:
ec2_tags = {
  Application = "ECS"
  Owner       = "Terraspace"
  Environment = "<%= Terraspace.env %>"
}
ec2_vpc_security_group_id = <%= output('network.security_group_id') %> 
ec2_subnets = [  <%= output('network.subnet_id_a') %>, <%= output('network.subnet_id_b') %>]
ec2_vpc_security_groups = <%= output('network.security_group_id') %> 
ec2_vpc_id = <%= output('network.vpc_id') %>

# Optional variables:
# ec2_name_prefix                  = "ecs-template"
# ec2_image_id                     = "ami-09c0b8e7f21923ac0"
# ec2_instance_type                = "t2.micro"
# ec2_key_name                     = "ec2ecsglog"
# ec2_iam_instance_profile_name    = "ecsInstanceRole"
# ec2_volume_size                  = "30"
# ec2_ecs_alb_name                 = "ecs-alb"
# ec2_ecs_target_group_name        = "ec2-ecs-target-group"
# ec2_ecs_target_group_port        = "80"
# ec2_ecs_target_group_protocol    = "HTTP" # Valid options [UDP, TCP, TCP_UDP, HTTP, HTTPS, TLS]
# ec2_ecs_target_group_target_type = "ip"
