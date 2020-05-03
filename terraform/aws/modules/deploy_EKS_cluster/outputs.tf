output "my_eks_cluster" {
  value       = "${aws_eks_cluster.my_eks_cluster.id}"
  description = "ID of the EKS cluster created."
}