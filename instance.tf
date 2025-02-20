resource "aws_instance" "nginx" {
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public[0].id
  security_groups        = [aws_security_group.web_sg.id]
  associate_public_ip_address = true
}