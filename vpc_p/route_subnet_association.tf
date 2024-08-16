resource "aws_route_table_association" "a" {
    route_table_id = aws_route_table.main.id
    subnet_id = aws_subnet.main

}