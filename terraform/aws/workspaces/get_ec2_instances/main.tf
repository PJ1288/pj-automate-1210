#Reference docs:https://www.terraform.io/docs/providers/aws/index.html
#Configure the AWS provider
provider "aws" {}

#Include/Call the module
module "deploy_ec2_instance" {
  source = "../../modules/deploy_ec2_instance"
  ami_id = "<your AMI ID>"
  instance_type = "<instance typq>"
}