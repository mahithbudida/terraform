resource "aws_instance" "sample" {
  count                   =  2
  ami                     = "ami-074df373d6bafa625"
  instance_type           = var.TYPE
  vpc_security_group_ids  = [var.SG_ID]

  tags                    = {
    Name                  =   "Server-${count.index}"
  }
}

variable "TYPE" {}
variable "SG_ID" {}

output "PRIVATE_IP" {
  value = "aws_instance.sample.*.private_ip"
}
output "PUBLIC_IP" {
  value = "aws_instance.sample.*.public_ip"
}