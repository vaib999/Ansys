# Terraform AWS VPC Infrastructure
## Overview
This Terraform project provisions AWS infrastructure, including a Virtual Private Cloud (VPC) with both public and private subnets across multiple availability zones. It also deploys an EC2 instance with a hypothetical Nginx server running on port 80, ensuring HTTP access over the public internet.

## Features
- VPC Creation: 10.0.0.0/16 CIDR block
- Public Subnets: 3 subnets across different availability zones
- Private Subnets: 3 subnets across different availability zones
- Internet Access:
- Public subnets have direct internet access via an Internet Gateway
- EC2 Instance: Deployed in a public subnet with a security group allowing HTTP (port 80) access

## After deployment, Terraform will output:

- VPC ID
- Public & Private Subnet IDs
- EC2 Instance Public IP