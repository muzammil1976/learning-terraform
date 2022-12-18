resource "aws_instance" "web" {
  ami           = "ami-070d3c2a310535689"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "terraform"
  }
}
