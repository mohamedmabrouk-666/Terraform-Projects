# EC2 Bastion on public subnet_a
resource "aws_instance" "bastion" {
  ami                    = "ami-0360c520857e3138f" # Ubuntu 20.04 example
  instance_type          = "t3.micro"
  key_name               = "my-keypair"
  subnet_id              = aws_subnet.public_1a.id
  vpc_security_group_ids = [aws_security_group.public_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = "bastion-ec2"
  }
}

# EC2 Nginx on public subnet_a
resource "aws_instance" "nginx_a" {
  ami                    = "ami-0360c520857e3138f"
  instance_type          = "t3.micro"
  key_name               = "my-keypair"
  subnet_id              = aws_subnet.public_1a.id
  vpc_security_group_ids = [aws_security_group.public_sg.id]
  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install nginx -y
              systemctl enable nginx
              systemctl start nginx
              EOF

  tags = {
    Name = "nginx-a"
  }
}

# EC2 Nginx on public subnet_b
resource "aws_instance" "nginx_b" {
  ami                    = "ami-0360c520857e3138f"
  instance_type          = "t3.micro"
  key_name               = "my-keypair"
  subnet_id              = aws_subnet.private_1b.id
  vpc_security_group_ids = [aws_security_group.public_sg.id]
  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install nginx -y
              systemctl enable nginx
              systemctl start nginx
              EOF

  tags = {
    Name = "nginx-b"
  }
}

# EC2 Nginx on public private_a
resource "aws_instance" "nginx_a1" {
  ami                    = "ami-0360c520857e3138f"
  instance_type          = "t3.micro"
  key_name               = "my-keypair"
  subnet_id              = aws_subnet.private_1a.id
  vpc_security_group_ids = [aws_security_group.public_sg.id]
  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install nginx -y
              systemctl enable nginx
              systemctl start nginx
              EOF

  tags = {
    Name = "nginx-a1"
  }
}

# EC2 Nginx on public private_b
resource "aws_instance" "nginx_b1" {
  ami                    = "ami-0360c520857e3138f"
  instance_type          = "t3.micro"
  key_name               = "my-keypair"
  subnet_id              = aws_subnet.private_1b.id
  vpc_security_group_ids = [aws_security_group.public_sg.id]
  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install nginx -y
              systemctl enable nginx
              systemctl start nginx
              EOF

  tags = {
    Name = "nginx-b1"
  }
}