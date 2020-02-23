# This module is to get a new instance in Openstack. 
# Reference docs:https://www.terraform.io/docs/providers/openstack/r/compute_instance_v2.html
resource "openstack_compute_instance_v2" "my-instances" {
  count             = "${var.count}"
  name              = "${format("my-instance%01d", count.index+1)}"
  image_id          = "${var.centos-image-id}" #This is the image we created using upload-centos7-template module
  flavor_id         = "1" #You can customize this. Further details in the above link.
  security_groups   = ["default"]

  network {
     name = "my-network"
  }
}