data "aws_ami" "lookup" {
  most_recent = true
  owners = var.owner

  filter {
    name = var.name
    values = ["zs9-ubuntu14-dev-php7.0-552-2b512c1c-*"]
  }
}

resource "aws_instance" "container" {
  ami = data.aws_ami.lookup.id
  instance_type = var.int_type

  subnet_id = var.subnet

  tags = {
    Name = var.int_tag
  }
}