# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}

# Define the VPC
resource "aws_vpc" "main_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.instance_tenancy
  tags = {
    Name = "main_vpc"
  }
}

# Define the subnet
resource "aws_subnet" "main_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr
  tags = {
    Name = "main_subnet"
  }
}

output "vpc_id" {
  value = aws_vpc.main_vpc.id
}

output "subnet_id" {
  value = aws_subnet.main_subnet.id
}
