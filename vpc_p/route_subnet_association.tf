# resource "aws_route_table_association" "a" {
#     route_table_id = 
#     subnet_id = aws_subnet.main

# }


resource "aws_route_table_association" "a" {
    subnet_id = aws_subnet.main
}