resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.virginia_cidr
  tags = {
    Name = "VPC_Virginia"
    env = "Dev"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.vpc_virginia.id
}