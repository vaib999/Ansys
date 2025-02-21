provider "aws" {
  region = local.region
}

module "vpc" {
  source           = "./modules/vpc"
  vpc_cidr        = var.vpc_cidr
  public_subnet_id = module.subnets.public_subnet_ids[0]
}


module "subnets" {
  source          = "./modules/subnets"
  vpc_id          = module.vpc.vpc_id
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}

module "security" {
  source = "./modules/security"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source            = "./modules/ec2"
  instance_ami      = var.instance_ami
  instance_type     = var.instance_type
  public_subnet_ids = module.subnets.public_subnet_ids
  security_group_id = module.security.web_sg_id
}