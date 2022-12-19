resource "aws_subnet" "openai_subnet" {
  vpc_id     = aws_vpc.openai_vpc.id
  cidr_block = "10.0.1.0/24"
  #  availability_zone = "eu-west-2a"
  tags = {
    Name = "openai-subnet"
  }
}
