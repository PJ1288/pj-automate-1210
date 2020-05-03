output "my-instance-id" {
  value       = "${openstack_compute_instance_v2.my-instances.*.name}"
  description = "Name of the compute resource created."
}