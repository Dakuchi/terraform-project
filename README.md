# Terraform AWS Resources Project

This branch of the project provides an Infrastructure as Code (IaC) solution using Terraform to provision AWS resources, including a Virtual Private Cloud (VPC), subnets, and an EC2 instance. The project uses Terraform modules to make the code modular and reusable.

## Prerequisites

- **Terraform**: Make sure Terraform is installed on your machine. You can download it from [terraform.io](https://www.terraform.io/downloads).
- **AWS Credentials**: Set up AWS credentials with the necessary permissions to create resources. Use the AWS CLI or environment variables for configuration.

## Variables

This project requires specific variables to be defined, either in a `terraform.tfvars` file or passed directly through the command line or environment variables:

- `vpc_cidr_block`: CIDR block for the VPC.
- `subnet_cidr_block`: CIDR block for the subnet.
- `avail_zone`: Availability zone for the resources.
- `env_prefix`: Prefix to identify the environment (e.g., "dev", "prod").
- `my_ip`: Your IP address for SSH access to the instance.
- `image_name`: The Amazon Machine Image (AMI) to use for the EC2 instance.
- `public_key_location`: Path to your SSH public key.
- `instance_type`: Instance type for the EC2 instance.

## Usage

1. **Initialize Terraform**: Prepare the project and download the necessary modules.
####
    terraform init

2. **Apply Configuration: Provision the AWS resources.
####
    terraform apply
3. Verify Resources: Check your AWS Console to confirm the VPC, subnet, and EC2 instance have been created as expected.

## Cleanup
####
    terraform destroy
