variable "no-of-instaces" {
  default = 2
}

resource "aws_instance" "web" {
  count         = var.no-of-instances
  ami           = "ami-070d3c2a310535689"
  instance_type = "t3.micro"


  tags = {
    Name = "terraform"
  }
}

