resource "aws_instance" "web" {
  // count = 0 ( we can make some condition to come with a value based on that this resource can be created)
  ami           = data.aws_ami.example.image_id
  instance_type = local.instance_type

  tags = {
    Name = "terraform"
  }
}

variable "instance_type" {
  default = null
}

locals {
  instance_tyoe = var.instance_type == null ? "t3.micro" : var.instance_type
}

data "aws_ami" "example" {
  executable_users = ["self"]
  most_recent      = true
  name_regex       = "base-with-insible"
  owners           = ["self"]
}