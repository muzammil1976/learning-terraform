variable "a" {
  default = 100
}

// variables block is having one reference, here is reference

output  "a" {
  value = var.a
}

// variable is terraform can be accessed by var.var_name or ${var.var_name}

output "x" {
  value = "value of a = ${var.a}"
}

output "value" {
  value = "value, a = ${var.a}, b = ${var.b}, c = ${var.c}, d = ${var.d}"
}

// If you access variable with any combination of other strings then ${} is preffered

variable "b" {}
// this variable b is declared in tfvars file


variable "c" {}
// this variable from cli of terraform, terraform apply -auto-approve -var c=400

variable "d" {}
// this variable from SHELL, export TF_VAR_d=500