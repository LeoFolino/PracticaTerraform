resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.virginia_cidr
  tags = {
    Name = "VPC_Virginia"
    env = "Dev"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.vpc_virginia.id
  cidr_block = var.subnet[0]
  map_public_ip_on_launch = true
}

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.vpc_virginia.id
  cidr_block = var.subnet[1]
}