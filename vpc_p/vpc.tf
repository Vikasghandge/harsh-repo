resource "aws_vpc" "main" {
    cidr = "10.0.0.0/16"
    instance_tenancy = "default"
  
}
