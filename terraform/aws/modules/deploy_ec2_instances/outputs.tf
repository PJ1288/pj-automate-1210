output "my_ec2_instance" {
  value       = "${aws_instance.my_ec2_instance.id}"
  description = "ID of the EC2 resource created."
}