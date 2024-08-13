resource "aws_security_group" "nodejs_sg" {
  vpc_id = aws_vpc.main.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "nodejs-sg"
  }
}

resource "aws_instance" "nodejs" {
  ami                         = var.nodejs_ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public_a.id
  #security_groups             = [aws_security_group.nodejs_sg.name]
  vpc_security_group_ids      = [aws_security_group.nodejs_sg.id]
  key_name                    = var.key_name

  tags = {
    Name = "nodejs-instance"
  }
}
