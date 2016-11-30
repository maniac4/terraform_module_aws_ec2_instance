output "aws_ec2_instance_id" { value = ["${aws_instance.ec2-instance.id}"] }
output "aws_ec2_instance_private_ip" { value = ["${aws_instance.ec2-instance.private_ip}"] }
output "aws_ec2_instance_public_ip" { value = ["${aws_instance.ec2-instance.public_ip}"] }