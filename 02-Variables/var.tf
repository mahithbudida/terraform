variable "sample"{
  default = "Hello world"
}

output "sample" {
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