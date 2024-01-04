# variables.tf

variable "network_vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "network_tags" {
  description = "Network Tags"
  type        = map(any)
}

variable "network_enable_dns_support" {
  description = "Option to enable DNS support"
  type        = bool
  default     = true
}

variable "network_enable_dns_hostnames" {
  description = "Option to enable DNS Hostnames"
  type        = bool
  default     = true
}

variable "network_subnet_cidr_block_public_1" {
  description = "CIDR block for public subnet 1"
  type        = string
  default     = "10.0.1.0/24"
}

variable "network_subnet_cidr_block_public_2" {
  description = "CIDR block for public subnet 2"
  type        = string
  default     = "10.0.2.0/24"
}

variable "network_subnet_cidr_block_private_1" {
  description = "CIDR block for private subnet 1"
  type        = string
  default     = "10.0.3.0/24"
}

variable "network_subnet_cidr_block_private_2" {
  description = "CIDR block for private subnet 2"
  type        = string
  default     = "10.0.4.0/24"
}

variable "allowed_ip" {
  description = "Allowed IP address for security group rules"
  type        = string
  default     = "0.0.0.0/0"
}

variable "network_security_group_name" {
  description = "The Name of the Security Group"
  type        = string
  default     = "ECS-sg"
}

variable "network_security_group_description" {
  description = "Descriptio of the SG"
  type        = string
  default     = "Allow inbound and outbound traffic"
}

variable "network_az_a" {
  description = "AZ for the subnet A"
  type        = string
  default     = "us-east-2a"
}

variable "network_az_b" {
  description = "AZ for the subnet B"
  type        = string
  default     = "us-east-2b"
}
