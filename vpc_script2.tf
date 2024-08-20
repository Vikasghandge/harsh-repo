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

resource "" "name" {
  
}