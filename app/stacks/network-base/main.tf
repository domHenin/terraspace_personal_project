resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_tag
  }
}

resource "aws_subnet" "subnet" {
  cidr_block = var.subnet_cidr
  vpc_id = aws_vpc.vpc.id
}

resource "aws_network_interface" "test" {
  subnet_id = aws_subnet.subnet.id
}