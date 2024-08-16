resource "aws_route_table_association" "b" {
    subnet_id = aws_subnet.orignal.id
    route_table_id = aws_route_table.rt3.id 
    

  
}