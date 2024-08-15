provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_instance" "this" {
    ami = var.instance_ami
    instance_type = "t2.micro" 
    tags = {
        name = "invor_instance"
    }
  
}