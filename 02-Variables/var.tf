variable "sample"{
  default = "Hello world"
}

output "sample1" {
  value = "var.sample"
}

output "sample2" {
  value = "${var.sample} - From Terraform"
}

// varibale if it is combained

variable "input" {}
output "output" {
  value = var.input
}
//Data types in Variable

variable "string" {
  default = "Mahiht"
}
variable "number" {
  default = 9738984846
}
variable "boo" {
  default = True
}

output "data-type"{
  value = "Name=${var.string} , Boo = ${var.boo}"
}

// Variable types