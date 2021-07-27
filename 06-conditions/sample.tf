resource "aws_instance" "sample" {
  ami            = "ami-074df373d6bafa625"
  instance_type  = var.TYPE == null ? "t3.micro" : var.TYPE
  tags           = {Name = "sample"}
}


provider "aws" {
  region = "us-east-1"
}

variable "TYPE" {
  default = null
}