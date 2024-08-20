provider "aws" {
    region = "ap-south-1"
    
}

resource "aws_vpc" "vpc" {
    cidr_block = "192.168.0.0/16"
    tags = {
      name = "vpc-tf"
    }
  
}

resource "aws_subnet" "public" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "192.168.0.0/24"
    availability_zone = "ap-south-1a"
    tags = {
      name = "public-subnet"
    }
  
}

resource "aws_subnet" "private" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "192.168.1.0/24"
    availability_zone = "ap-south-1b"
    tags = {
      name = "private-subnet"
    }
  
}

resource "aws_internet_gateway" "internet" {
    vpc_id = aws_subnet.public.id
    tags = {
      name = "igw_vpc"
    }
  
}

resource "aws_route_table" "public_rt" {
    vpc_id = aws_vpc.vpc.id
route = 
 
 }  

