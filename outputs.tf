output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.subnets.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.subnets.private_subnet_ids
}

output "instance_public_ip" {
  value = module.ec2.instance_public_ip
}

output "nat_gateway_id" {
  value = module.vpc.nat_gateway_id
}