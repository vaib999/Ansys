resource "aws_subnet" "public" {
  count             = length(var.public_subnets)
  vpc_id           = var.vpc_id
  cidr_block       = var.public_subnets[count.index]
  map_public_ip_on_launch = true
  availability_zone = data.aws_availability_zones.available.names[count.index]
}

resource "aws_subnet" "private" {
  count             = length(var.private_subnets)
  vpc_id           = var.vpc_id
  cidr_block       = var.private_subnets[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]
}