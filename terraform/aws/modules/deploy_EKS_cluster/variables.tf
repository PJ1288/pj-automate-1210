variable "cluster_name" {}
variable "iam_role_arn" {}
variable "subnet_id" {}
variable "node_group_name" {}
variable "node_iam_role_arn" {}
variable "security_groups" {
  type= "list"
}