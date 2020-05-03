# Deply the EC2 instance
# REad more here: https://www.terraform.io/docs/providers/aws/r/instance.html
# This module is written in Terraform 0.12
resource "aws_instance" "my_ec2_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "TestEC2Instance"
  }