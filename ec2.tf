resource "aws_instance" "openai_ec2" {
  ami                         = "ami-07c2ae35d31367b3e"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.openai_subnet.id
  key_name                    = aws_key_pair.openai_ssh_key.key_name
  associate_public_ip_address = true
  security_groups             = [aws_security_group.openai_sg.id]
  tags = {
    Name = "openai-instance"
  }
}
