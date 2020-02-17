#Reference docs:https://www.terraform.io/docs/providers/openstack/index.html
#Configure the Openstakc provider
provider "openstack" {
  auth_url = "${var.authentication-url}"
}

#Call the module
module "upload-centos7-tempate" {
  source = "../../modules/upload-centos7-template"
}