resource "aws_vpc" "modulevpc" {
  cidr_block = var.aws_vpc
  
  tags = {
    "Name" = "value"
  }
}

resource "aws_subnet" "mysubnet" {

    vpc_id = aws_vpc.modulevpc.id
     count = 2

    cidr_block = cidrsubnet(var.cidr_block,8, count.index)

    tags = {
      "Name" = "value"
    }
}



output "vpcid" {
  
  vpcid = aws_vpc.modulevpc.id
}