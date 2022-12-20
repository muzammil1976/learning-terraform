variable "alist" {
  default = [1, 2]
}

variable "amap" {
  default = {
    a = 1
    b = 2
  }
}

output "alist_length" {
  value = length(var.alist)
}

output "amap_length" {
  value = length(var.amap)
}