variable "alist" {
  default = [1, 2]
}

variable "amap" {
  default = {
    set1 = {
      a = 2
      b = 3
    }
  }
}

output "alist_length" {
  value = length(var.alist)
}

output "amap_length" {
  value = length(var.amap)
}