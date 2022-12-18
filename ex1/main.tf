resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-0a708982898d650c3"

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_instance" "web" {
  ami           = "ami-070d3c2a310535689"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "terraform"
  }
}

terraform {
  backend "s3" {
    bucket = "terraform-1976"
    key    = "ex1/terraform.tfstate"
    region = "us-east-1"
  }
}