resource "aws_instance" "ec2-instance" {
  count = "${var.count}"
  instance_type = "${var.instance_type}"
  availability_zone = "${var.availability_zone}"
  security_groups = "${var.security_groups}"
  key_name = "${var.key_name}"
  ami = "${var.ami}"
  tags {
    Name = "${var.org}-${var.env}-${var.service}"
  }
  root_block_device {
    volume_type = "${var.volume_type}"
    volume_size = "${var.volume_size}"
  }

  provisioner "chef" {
    environment = "${var.env}"
    run_list = "${var.chef_run_list}"
    node_name = "${var.org}-${var.env}-${var.service}"
    server_url = "${var.chef_server_url}"
    secret_key = "${var.chef_secret_key}"
    validation_client_name = "${var.chef_validation_client_name}"
    validation_key = "${var.chef_validation_key}"
    ssl_verify_mode = "${var.chef_ssl_verify_mode}"
    connection {
      user = "${var.ssh_user}"
      private_key = "${var.ssh_private_key}"
    }
  }
}