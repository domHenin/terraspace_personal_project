data "aws_ami" "lookup" {
  most_recent = true
  owners = ["679593333241"]
//  owners = var.server_ami


  filter {
    name = var.name
    values = ["debian-stretch-hvm-*"]
  }
}

resource "aws_instance" "container" {
  ami = data.aws_ami.lookup.id
  instance_type = var.int_type

  subnet_id = var.subnet_id

  tags = {
    Name = var.int_tag
  }
}