resource "aws_subnet" "origin" {
    vpc_id = aws_vpc.origin.id
    cidr_block = "10.0.2.0/24"
    map_public_ip_on_launch = true

    tags = {
      name = "private_subnet"
    }
  
}