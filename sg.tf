resource "aws_security_group" "openai_sg" {
  name        = "openai_sg"
  description = "Allow SSH and all outbound traffic"
  vpc_id      = aws_vpc.openai_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
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
    Name = "allow_openai_ssh"
  }
}
