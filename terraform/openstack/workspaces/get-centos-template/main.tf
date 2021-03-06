#Reference docs:https://www.terraform.io/docs/providers/openstack/index.html
#Configure the Openstack provider
provider "openstack" {
  auth_url = "${var.authentication-url}"
}

#Include/Call the module
module "upload-centos7-tempate" {
  source = "../../modules/upload-centos7-template"
}