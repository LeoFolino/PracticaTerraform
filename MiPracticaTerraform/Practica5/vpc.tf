resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.virginia_cidr
  tags = {
    Name = "VPC_Virginia"
    env = "Dev"
  }
}

resource "aws_vpc" "vpc_ohio" {
  cidr_block = var.ohio_cidr
  tags = {
    Name = "VPC_Ohio"
    env = "Dev"
  }
  provider = aws.ohio
}

# La manera de trabajar con variables, es creando un archivo variables.tf donde va a ir la definicion de cada variable, y luego un archivo terraform.tfvars donde van los valores de las variables
