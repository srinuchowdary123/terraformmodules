variable "aws_vpc" {
  
  type = string
  cidr_block = "192.168.0.0/16"

}

variable "aws_subnet" {

    type = list(string) 

    
  
}


