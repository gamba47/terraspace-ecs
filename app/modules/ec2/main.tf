resource "aws_launch_template" "ecs_lt" {
  name_prefix   = var.ec2_name_prefix
  image_id      = var.ec2_image_id
  instance_type = var.ec2_instance_type

  key_name               = var.ec2_key_name
  vpc_security_group_ids = [var.ec2_vpc_security_group_id]
  iam_instance_profile {
    name = var.ec2_iam_instance_profile_name
  }

  block_device_mappings {
    device_name = "/dev/xvda"
    ebs {
      volume_size = var.ec2_volume_size
      volume_type = "gp2"
    }
  }

  tag_specifications {
    resource_type = "instance"
    tags          = var.ec2_tags
  }

  user_data = filebase64("${path.module}/ecs.sh")
}

resource "aws_lb" "ecs_alb" {
  name               = var.ec2_ecs_alb_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.ec2_vpc_security_groups]
  subnets            = var.ec2_subnets

  tags = var.ec2_tags
}


resource "aws_lb_target_group" "ecs_tg" {
  name        = var.ec2_ecs_target_group_name
  port        = var.ec2_ecs_target_group_port
  protocol    = var.ec2_ecs_target_group_protocol
  target_type = var.ec2_ecs_target_group_target_type
  vpc_id      = var.ec2_vpc_id

  health_check {
    path = "/"
  }
}

resource "aws_lb_listener" "ecs_alb_listener" {
  load_balancer_arn = aws_lb.ecs_alb.arn
  port              = var.ec2_ecs_target_group_port
  protocol          = var.ec2_ecs_target_group_protocol

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ecs_tg.arn
  }
}
