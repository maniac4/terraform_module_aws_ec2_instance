variable count { default = "1" }
variable org { default = "cammy" }
variable env { default = "production" }
variable service { default = "" }
variable instance_type { default = "t2.small" }
variable availability_zone { default = "ap-southeast-2c" }
variable ebs_optimized { default = "true" }
variable region { default = "ap-southeast-2" }
variable ami { default = "ami-ca340da9" }
variable ssh_user { default = "ec2-user" }
variable key_name { default = "ops" }
variable volume_type { default = "gp2" }
variable volume_size { default = "25" }
variable chef_server_url { default = "https://chef.internal.cammy.ec2/organizations/cammy" }
variable chef_secret_key { default = "" }
variable chef_validation_client_name { default = "ops" }
variable chef_validation_key { default = "" }
variable chef_run_list {
  type = "list"
  default = ["role[cammy_base]", "role[cammy_jenkins]"]
}
variable chef_ssl_verify_mode { default = "verify_peer" }

variable security_groups {
  type = "list"
  default = [ "base-security-group" ]
}
variable ssh_private_key { default = "" }
