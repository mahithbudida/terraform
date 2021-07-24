variable "sample"{
  default = "Hello world"
}

output "sample" {
  value = "var.sample"
}

output "sample1" {
  value = "${var.sample}"
}