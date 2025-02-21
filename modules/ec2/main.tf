resource "aws_instance" "nginx" {
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  subnet_id              = var.public_subnet_ids[0]
  security_groups        = [var.security_group_id]
  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install nginx -y
              sudo systemctl start nginx
              sudo systemctl enable nginx
              EOF
}