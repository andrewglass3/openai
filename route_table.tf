resource "aws_route_table" "openai_rtb" {
  vpc_id = aws_vpc.openai_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.openai_igw.id
  }

  tags = {
    Name = "openai_rtb"
  }
}
