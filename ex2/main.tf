module "sg" {
  source = "./security-group"

}
module "instance" {
  source = "./instance"

}

terraform {
  backend "s3" {
    bucket = "terraform-1976"
    key    = "ex2/terraform.tfstate"
    region = "us-east-1"
  }
}