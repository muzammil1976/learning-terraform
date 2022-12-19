resource "aws_instance" "web" {
  ami           = "ami-070d3c2a310535689"
  instance_type = "t3.micro"


  tags = {
    Name = "terraform-${count.index+1}"
  }
}