resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.main.id
    tags = {
        name = "IGW"
    }
}

resource "aws_nat_gateway" "nat" {
    vpc =
}


}