




resource "aws_nat_gateway" "origin" {
  vpc_id = aws_vpc.rt2.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.origin.id
  }

  tags = {
    Name = "route_table"
  }
}
