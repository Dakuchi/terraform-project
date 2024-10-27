# Terraform AWS Infrastructure Project

This project contains multiple branches, each demonstrating different aspects of Terraform for AWS infrastructure provisioning. The main branch provides an overview of these features:

## Features Overview

1. **[`deploy-to-ec2-default-components`](https://github.com/Dakuchi/terraform-project/tree/feature/deploy-to-ec2-default-components)**: This branch provisions an EC2 instance and the necessary AWS components to enable networking and security.

2. **[`provisioner`](https://github.com/Dakuchi/terraform-project/tree/feature/provisioners)**: This branch extends the EC2 setup by using Terraform provisioners to automate tasks on both the local and remote servers.
   - **Local Provisioners**: Executes commands on the local server to configure or prepare files before transferring them to the remote server.
   - **Remote Provisioners**: Copies files to the EC2 instance and executes commands on the instance for post-provisioning tasks, such as configuration scripts or application setup.

3. **[`Module`](https://github.com/Dakuchi/terraform-project/tree/modules)**: This branch demonstrates creating reusable Terraform modules for deploying AWS infrastructure components.
   - **Custom Modules**: Contains modules to create resources like VPCs, subnets, instances, and other infrastructure elements.
   - **Reusability**: Each module is designed for reuse, making it easy to deploy similar setups across different environments with minimal code changes.

4. **[`EKS`](https://github.com/Dakuchi/terraform-project/tree/feature/eks)**: This branch provisions an Amazon Elastic Kubernetes Service (EKS) cluster using Terraform modules.
   - **EKS Cluster**: Provisions an EKS cluster with the necessary networking and IAM roles.
   - **Worker Nodes**: Configures worker nodes within the EKS cluster for running containerized applications.
   - **Modules for EKS**: Uses or references modules to manage the complexity of deploying and configuring the EKS cluster and associated resources.

## Getting Started

Each branch can be checked out individually to explore the specific feature it demonstrates. Make sure to:

1. Clone the repository:

   ```bash
   git clone https://github.com/Dakuchi/terraform-project.git
