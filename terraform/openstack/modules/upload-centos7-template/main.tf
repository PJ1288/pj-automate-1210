# This module is to uplaod a new image template to Openstack. We will be  using this image further in other modules to create instances in Openstack.
# Reference docs:https://www.terraform.io/docs/providers/openstack/r/images_image_v2.html
resource "openstack_images_image_v2" "centos7" {
  name             = "Centos7"
  image_source_url = "${var.source-url}"
  container_format = "bare"
  disk_format      = "qcow2"
}