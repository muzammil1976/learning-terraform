resource "aws_instance" "web" {
  ami           = "ami-070d3c2a310535689"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform"
  }

  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "root"
      password = "DevOps321"
      host     = self.public_ip
    }

    inline = [
      "uname"
    ]
  }
}