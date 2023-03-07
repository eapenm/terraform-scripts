module "my_vpc" {
  source = "../modules/vpc"
  # below we will pass the value for the variables
  vpc_cidr         = "192.168.0.0/16"
  instance_tenancy = "default"
  vpc_id           = module.my_vpc.vpc_id
  subnet_cidr      = "192.168.1.0/24"
}

module "my_ec2" {
  source           = "../modules/ec2"
  ec2-instancetype = "t2.micro"
  subnet_id        = module.my_vpc.subnet_id
}