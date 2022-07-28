data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}
data "aws_vpc" "lab_vpc" {
    filter {
      name = "tag:Name"
      values =["lab_vpc"]
    }
}
data "aws_subnet" "public" {
    filter {
      name = "tag:Name"
      values =["public"]
    }
} 
data "aws_subnet" "private" {
    filter {
      name = "tag:Name"
      values =["private"]
    }
} 
data "aws_subnet" "data" {
    filter {
      name = "tag:Name"
      values =["data"]
    }
} 

#data "aws_subnet" "data_a" {
 #   filter {
 #     name = "tag:Name"
 #    values =["data_a"]
 #   }
#} 

#data "aws_subnet" "data_b" {
 #   filter {
 #     name = "tag:Name"
 #     values =["data_b"]
 #   }
#} 