output "centos7-image-id" {
  value       = "${openstack_images_image_v2.centos7.id}"
  description = "Image Id as output for the resource created."
}