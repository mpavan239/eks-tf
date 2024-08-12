resource "aws_vpc" "main" {
  cidr_block = var.vpc_block
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_vpc_ipv4_cidr_block_association" "secondary" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.vpc_secondary_block
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "${var.vpc_name}-IGW"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name = "${var.vpc_name}-PUBLIC-ROUTE-TABLE"
  }
}

resource "aws_vpc_gateway_attachment" "main" {
  vpc_id = aws_vpc.main.id
  internet_gateway_id = aws_internet_gateway.main.id
}
