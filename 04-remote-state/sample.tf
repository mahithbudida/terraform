resource "aws_instance" "sample" {
  ami                    = "ami-074df373d6bafa625"
  instance_type          = "t3.micro"
  vpc_security_group_ids = "sg-061b8d4afe08bb944"

  tags                   = {
    Name                 = "Sample"
  }
}

provider "aws" {
  region     = "us-east-1"
}

//terraform {
 // backend "s3"{
 //   bucket   = "terraform-b57"
  //  key      = "sample/terraform.tfstate"
//    region   = "us-east-1"
 // }
//}

