data "aws_ec2_spot_price" "example" {
  instance_type     = "t3.micro"
  availability_zone = "us-east-1a"

  filter {
    name   = "product-description"
    values = ["Linux/UNIX"]
  }
}

provider "aws" {
  region = "us-east-1"
}


variable "spot" {
  default = data.aws_ec2_spot_price.example
}

output "Output" {
  value = var.spot.spot_price
}