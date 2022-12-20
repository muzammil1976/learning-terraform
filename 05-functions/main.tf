variable "alist" {
  default = [1, 2]
}

output "alist_length" {
  value = length(var.alist)
}