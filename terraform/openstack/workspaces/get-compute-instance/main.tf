#Reference docs:https://www.terraform.io/docs/providers/openstack/index.html
#Configure the Openstack provider
provider "openstack" {
  auth_url = "${var.authentication-url}"
}

#Include/Call the module
module "compute-instances" {
  source = "../../modules/compute-instances"
  count  = 2
  centos-image-id = "<image_id of the centos7 image created>"
}