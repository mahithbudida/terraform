module "sg" {
  source      = "./sg"
}

module "ec2" {
  source      = "./ec2"
  depends_on  = [module.sg]
  SG_ID       = module.sg.SG_ID
  TYPE        = "t2.micro"

}

provider "aws" {
  region = "us-east-1"
}

output "PRIVATE_IP" {
  value = module.ec2.PRIVATE_IP
}