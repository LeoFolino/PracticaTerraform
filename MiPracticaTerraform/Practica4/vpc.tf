resource "aws_vpc" "vpc_virginia" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "VPC_Virginia"
    env = "Dev"
  }
}

# Ahora bien, esto deploya una VPC en la region de Virginia porque esta defindo asi en providers.tf (region = "us-east-1"). Si quiero deployar una segunda VPC pero en ohio por ejemplo:

resource "aws_vpc" "vpc_ohio" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "VPC_Ohio"
    env = "Dev"
  }
  provider = aws.ohio
}

# * (ver primero providers.tf)
# $$$ Una vez con el nuevo provider y su alias, modificamos el resource que apunta a la vpc de ohio, y añadimos el provider con el alias creado en vpc.tf
