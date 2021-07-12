resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_tag
  }
}

resource "aws_subnet" "subnet" {
  cidr_block = var.subnet_cidr
  vpc_id     = aws_vpc.vpc.id
}

resource "aws_security_group" "container_sg" {
  name        = "container_sg"
  description = "allow inbound traffic"

  vpc_id      = aws_vpc.vpc.id

  ingress {
    from_port = var.sg_port
    protocol  = "tcp"
    to_port   = var.sg_port
    cidr_blocks = var.allow_inbound_cidrs
  }

  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.sg_tag
  }
}

//resource "aws_network_interface" "test" {
//  subnet_id = aws_subnet.subnet.id
//}