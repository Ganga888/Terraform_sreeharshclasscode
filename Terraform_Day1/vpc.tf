resource "aws_vpc" "myvpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "GangaVpc"
    Env  = "Dev"
  }
}

resource "aws_internet_gateway" "ganga-igw" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "Ganga-IGW"
  }
}