




resource "aws_nat_gateway" "example" {
  vpc_id = aws_vpc.example.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.origin.id
  }

  tags = {
    Name = "route_table"
  }
}
