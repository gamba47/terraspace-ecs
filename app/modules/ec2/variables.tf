variable "ec2_name_prefix" {
  description = "The prefix name of the instances"
  type        = string
  default     = "ecs-template"
}

variable "ec2_image_id" {
  description = "The Image ID for ECS"
  type        = string
  default     = "ami-09c0b8e7f21923ac0"
}

variable "ec2_instance_type" {
  description = "The Instance to use in the template"
  type        = string
  default     = "t2.micro"
}

variable "ec2_key_name" {
  description = "The IAM Key Name"
  type        = string
  default     = "ec2ecsglog"
}

variable "ec2_iam_instance_profile_name" {
  description = "The Profile Name"
  type        = string
  default     = "ecsInstanceRole"
}

variable "ec2_volume_size" {
  description = "The volume size of the instances in the template"
  type        = number
  default     = 30
}

variable "ec2_ecs_alb_name" {
  description = "The ALB Name"
  type        = string
  default     = "ecs-alb"
}

variable "ec2_tags" {
  description = "EC2 Tags"
  type        = map(any)
}

variable "ec2_ecs_target_group_name" {
  description = "The Name of the Target Group"
  type        = string
  default     = "ec2_ecs_target_group"
}

variable "ec2_ecs_target_group_port" {
  description = "The Port of the Target Group"
  type        = number
  default     = 80
}

variable "ec2_ecs_target_group_protocol" {
  description = "The Protocol of the Target Group"
  type        = string
  default     = "http"
}

variable "ec2_ecs_target_group_target_type" {
  description = "The Target Type of the Target Group"
  type        = string
  default     = "ip"
}
