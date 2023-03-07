# Define the EC2 instance
resource "aws_instance" "main_instance" {
  ami           = var.ec2-ami
  instance_type = var.ec2-instancetype
  subnet_id     = var.subnet_id
  tags = {
    Name = "main_instance"
  }
}



