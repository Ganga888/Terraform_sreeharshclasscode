resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.subnet1_cidr

  tags = {
    Name = var.subnet1_name
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.subnet2_cidr

  tags = {
    Name = var.subnet2_name
  }
}

resource "aws_subnet" "subnet3" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.subnet3_cidr

  tags = {
    Name = var.subnet3_name
  }
}