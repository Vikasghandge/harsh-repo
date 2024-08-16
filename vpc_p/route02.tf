# attaching nat gateway

resource "aws_route_table" "rt02" {
    vpc_id = aws_nat_gateway.nat.id 
    route = {
        cidr_block = "0.0.0.0/0"
        nat_id = aws_nat_gateway.nat_id
    }
    tags = {
      name = "route_table-01"
      
    }
  
}