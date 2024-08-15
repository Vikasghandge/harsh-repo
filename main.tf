provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_instance" "this" {
    ami = var.instance_ami
    instance_type = var.instance_type 
    tags = {
        name = "invor_instance"
    }
  
}