resource "aws_route_table" "rt2" {
  vpc_id = aws_vpc.rt2.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws
  }

  tags = {
    Name = "route_table"
  }
}
