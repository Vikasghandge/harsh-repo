resource "aws_nat_gateway" "rt2" {
  vpc_id = aws_vpc.rt2.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway
  }

  tags = {
    Name = "route_table"
  }
}
