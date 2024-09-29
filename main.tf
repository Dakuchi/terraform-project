## AWS credentials
provider "aws" {}

## Define variables
variable "cidr_blocks" {
  description = "subnet cidr blocks and name tags for vpc and subnets"
  type = list(object({
    cidr_block = string
    name = string
  }))
}

# defined in environment variable with export TF_VAR_avail_zone="ap-southeast-1a"
variable "avail_zone" {} 

## Create recources
resource "aws_vpc" "development-vpc" {
  cidr_block = var.cidr_blocks[0].cidr_block
  tags = {
    Name: var.cidr_blocks[0].name
  }
}

## Create recources
resource "aws_subnet" "dev-aws_subnet-1" {
  vpc_id = aws_vpc.development-vpc.id
  cidr_block = var.cidr_blocks[1].cidr_block
  availability_zone = var.avail_zone
  tags = {
    Name: var.cidr_blocks[1].name
  }
}

## Query data from real infrastructure
data "aws_vpc" "existing_vpc" {
  default = true
}

## Create recources from queried data
resource "aws_subnet" "dev-aws_subnet-2" {
  vpc_id = data.aws_vpc.existing_vpc.id
  cidr_block = "172.31.48.0/20"
  availability_zone = "ap-southeast-1a"
  tags = {
    Name: "subnet-1-default"
  }
} 

## Output 
output "dev-vpc-id" {
  value = aws_vpc.development-vpc.id
}

output "dev-subnet-id" {
  value = aws_subnet.dev-aws_subnet-1.id
}
