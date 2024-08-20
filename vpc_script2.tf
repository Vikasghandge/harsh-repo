provider "aws" {
    region = "ap-south-1"
    
}

resource "aws_vpc" "vpc" {
    cidr_block = "192.168.0.0/16"
    tags = {
      name = "vpc-tf"
    }
  
}

removed {
  
}