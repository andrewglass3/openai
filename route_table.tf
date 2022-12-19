resource "aws_route_table" "openai_rtb" {
  vpc_id = aws_vpc.openai_vpc.id

  route {
    cidr_block = "10.0.1.0/24"
    gateway_id = aws_internet_gateway.openai_igw.id
  }

  tags = {
    Name = "openai_rtb"
  }
}

resource "aws_route_table_association" "openai_rtb_a" {
  subnet_id      = aws_subnet.openai_subnet.id
  route_table_id = "openai_rtb"
}
