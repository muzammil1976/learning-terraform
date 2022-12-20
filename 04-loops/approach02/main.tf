module "ec2" {
  source  = "./module"
  count   = 2
  nametag = "terraform-${count.index + 1}"
}