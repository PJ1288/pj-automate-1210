# Deploy the EKS cluster
# Read more here : https://www.terraform.io/docs/providers/aws/r/eks_cluster.html
resource "aws_eks_cluster" "my_eks_cluster" {
  name     = var.cluster_name
  role_arn = var.iam_role_arn

  vpc_config {
    subnet_ids = [var.subnet_id]
     security_group_ids = [var.security_groups]
  }
}

resource "aws_eks_node_group" "my_eks_cluster_nodes" {
  cluster_name    = "${aws_eks_cluster.my_eks_cluster.name}"
  node_group_name = var.node_group_name
  node_role_arn   = var.node_iam_role_arn
  subnet_ids      = [var.subnet_id]

  scaling_config {
    desired_size = 2
    max_size     = 2
    min_size     = 2
  }
}