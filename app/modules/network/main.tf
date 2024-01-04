resource "aws_vpc" "my_vpc" {
  cidr_block           = var.network_vpc_cidr_block
  enable_dns_support   = var.network_enable_dns_support
  enable_dns_hostnames = var.network_enable_dns_hostnames
  tags                 = var.network_tags
}

resource "aws_subnet" "my_public_subnet_a" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.network_subnet_cidr_block_public_1
  availability_zone = var.network_az_a

  tags = var.network_tags
}

resource "aws_subnet" "my_public_subnet_b" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.network_subnet_cidr_block_public_2
  availability_zone = var.network_az_b

  tags = var.network_tags
}

resource "aws_subnet" "my_private_subnet_a" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.network_subnet_cidr_block_private_1
  availability_zone = var.network_az_a

  tags = var.network_tags
}

resource "aws_subnet" "my_private_subnet_b" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.network_subnet_cidr_block_private_2
  availability_zone = var.network_az_b
  tags              = var.network_tags
}

resource "aws_internet_gateway" "my_internet_gateway" {
  vpc_id = aws_vpc.my_vpc.id
  tags   = var.network_tags
}

resource "aws_route_table" "my_public_route_table_1" {
  vpc_id = aws_vpc.my_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_internet_gateway.id
  }
  tags = var.network_tags
}

resource "aws_route_table" "my_public_route_table_2" {
  vpc_id = aws_vpc.my_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_internet_gateway.id
  }
  tags = var.network_tags
}

resource "aws_route_table" "my_private_route_table_1" {
  vpc_id = aws_vpc.my_vpc.id
  tags   = var.network_tags
}

resource "aws_route_table" "my_private_route_table_2" {
  vpc_id = aws_vpc.my_vpc.id
  tags   = var.network_tags
}

resource "aws_route" "private_route_1" {
  route_table_id         = aws_route_table.my_private_route_table_1.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.my_nat_gateway.id
}

resource "aws_route" "private_route_2" {
  route_table_id         = aws_route_table.my_private_route_table_2.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.my_nat_gateway.id
}

resource "aws_route_table_association" "my_public_subnet_association_1" {
  subnet_id      = aws_subnet.my_public_subnet_a.id
  route_table_id = aws_route_table.my_public_route_table_1.id
}

resource "aws_route_table_association" "my_public_subnet_association_2" {
  subnet_id      = aws_subnet.my_public_subnet_b.id
  route_table_id = aws_route_table.my_public_route_table_2.id
}

resource "aws_route_table_association" "my_private_subnet_association_1" {
  subnet_id      = aws_subnet.my_private_subnet_a.id
  route_table_id = aws_route_table.my_private_route_table_1.id
}

resource "aws_route_table_association" "my_private_subnet_association_2" {
  subnet_id      = aws_subnet.my_private_subnet_b.id
  route_table_id = aws_route_table.my_private_route_table_2.id
}

resource "aws_nat_gateway" "my_nat_gateway" {
  allocation_id = aws_eip.my_eip.id
  subnet_id     = aws_subnet.my_public_subnet_a.id
  depends_on    = [aws_internet_gateway.my_internet_gateway]
}

resource "aws_eip" "my_eip" {
  domain = "vpc"
}

resource "aws_security_group" "security_group" {
  vpc_id = aws_vpc.my_vpc.id

  name        = var.network_security_group_name
  description = var.network_security_group_description

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.allowed_ip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.allowed_ip]
  }
}

