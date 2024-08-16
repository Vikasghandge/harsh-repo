resource "aws_route_table_association" "a" {
    rouroute_table_id = aws_route_table.main  
}