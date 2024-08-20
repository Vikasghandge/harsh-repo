provider "aws" {
    region = "ap-south-1"
    
}

resource "aws_vpc" "vnet" {
    cidr_block = "192.168.0.0/16"
    tags = {
      name = "vpc-tf"
    }
  
}

resource "aws_subnet" "public" {
    vpc_id = aws_vpc.vnet.id
    cidr_block = "192.168.0.0/24"
    availability_zone = "ap-south-1a"
    tags = {
      name = "public-subnet"
    }
  
}

resource "aws_subnet" "private" {
    vpc_id = aws_vpc.vnet.id
    cidr_block = "192.168.1.0/24"
    availability_zone = "ap-south-1b"
    tags = {
      name = "private-subnet"
    }
  
}

resource "aws_internet_gateway" "internet" {
    vpc_id = aws_vpc.vnet.id
    tags = {
      name = "igw_vpc"
    }
  
}

resource "aws_route_table" "public_rt" {
    vpc_id = aws_vpc.vnet.id
route = {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.in
} 
tags = {
  name = "public-rt"
}
 }  

 resource "aws_route_table_association" "attach" {
    subnet_id = aws_subnet.public.id
    route_table_id = aws_route_table.public_rt.id
   
 }

resource "aws_eip" "elastic" {
    domain = "vpc"
  
}
  resource "aws_nat_gateway" "example" {
    allocation_id = aws_eip.elastic.id
    subnet_id = aws_subnet.public.id
    tags = {
      name = "nat-gw"
    }

    
  }
 
 resource "aws_route_table" "private-rt" {
    vpc_id = aws_vpc.vnet.id
    route = {
        cidr_block = "0.0.0.0./0"
        nat_gateway_id = aws_nat_gateway.example.id             
    }
    tags = {
      name = "private_rt"
    }
   
 }
resource "aws_route_table_association" "attach2" {
    subnet_id = aws_subnet.private.id
    route_table_id = aws_route_table.private-rt.id 
  
}
output "vpc_id" {
    value = aws_vpc.vnet
  
}