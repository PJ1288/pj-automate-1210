# How to use this workspace
Export the below variables before running `terraform plan` in your workspace.
```
$ export AWS_ACCESS_KEY_ID="<My access key>"
$ export AWS_SECRET_ACCESS_KEY="<My secret key>"
$ export AWS_DEFAULT_REGION="<AWS region with which you will like to interact>"
$ cd <path to your workspace>
$ terraform plan
$ terraform apply
```