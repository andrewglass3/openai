resource "aws_internet_gateway" "openai_igw" {
  vpc_id = aws_vpc.openai_vpc.id
  tags = {
    Name = "openai-igw"
  }
}

#resource "aws_internet_gateway_attachment" "openai_igw_attach" {
#  vpc_id              = aws_vpc.openai_vpc.id
##  internet_gateway_id = aws_internet_gateway.openai_igw.id
#}
