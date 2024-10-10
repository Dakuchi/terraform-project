provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "terraform-instance" {
  ami                         = "ami-0ad522a4a529e7aa8" 
  instance_type               = "t2.micro"  
  
  availability_zone = "ap-southeast-1a"
  associate_public_ip_address = true

  tags = {
    Name = "My-Terraform-EC2-Instance"
  }
}

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.terraform-instance.id
}

output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.terraform-instance.public_ip
}
