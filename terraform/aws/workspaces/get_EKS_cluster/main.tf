#Reference docs:https://www.terraform.io/docs/providers/aws/index.html
#Configure the AWS provider
provider "aws" {}

module "deploy_eks_cluster" {
  source            = "../../modules/deploy_eks_cluster"
  aws_region        = "us-east-1"
  cluster_name      = "test-eks-clusters"
  iam_role_arn      = "<IAM ROLE ARN>"
  subnet_id         = "List of subnets to be used"
  node_group_name   = "test-node-group"
  node_iam_role_arn = "<IAM ROLE ARN>"
  security_groups   = ["<List of security groups to be used>"]
}