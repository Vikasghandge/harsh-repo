# resource "aws_nat_gateway" "nat" {
#     vpc = aws_vpc.main.id
#     tags = "nat"
# }


resource "aws_eip" "nat" {
  vpc = true
}
