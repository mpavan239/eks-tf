resource "aws_subnet" "public_01" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet01_block
  map_public_ip_on_launch = true
  availability_zone       = element(data.aws_availability_zones.available.names, 0)

  tags = {
    Name = "${var.vpc_name}-${var.subnet01_name}"
    kubernetes.io/role/elb = "1"
  }
}

resource "aws_subnet" "public_02" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet02_block
  map_public_ip_on_launch = true
  availability_zone       = element(data.aws_availability_zones.available.names, 1)

  tags = {
    Name = "${var.vpc_name}-${var.subnet02_name}"
    kubernetes.io/role/elb = "1"
  }
}

resource "aws_subnet" "private_01" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet01_private_block
  map_public_ip_on_launch = false
  availability_zone       = element(data.aws_availability_zones.available.names, 0)

  tags = {
    Name = "${var.vpc_name}-${var.subnet01_private_name}"
    kubernetes.io/role/internal-elb = "1"
  }
}

resource "aws_subnet" "private_02" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet02_private_block
  map_public_ip_on_launch = false
  availability_zone       = element(data.aws_availability_zones.available.names, 1)

  tags = {
    Name = "${var.vpc_name}-${var.subnet02_private_name}"
    kubernetes.io/role/internal-elb = "1"
  }
}

resource "aws_subnet" "cluster_01" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet01_cluster_block
  map_public_ip_on_launch = false
  availability_zone       = element(data.aws_availability_zones.available.names, 0)

  tags = {
    Name = "${var.vpc_name}-${var.subnet01_cluster_name}"
  }
}

resource "aws_subnet" "cluster_02" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet02_cluster_block
  map_public_ip_on_launch = false
  availability_zone       = element(data.aws_availability_zones.available.names, 1)

  tags = {
    Name = "${var.vpc_name}-${var.subnet02_cluster_name}"
  }
}

resource "aws_subnet" "private_secondary_01" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet01_private_secondary_block
  map_public_ip_on_launch = false
  availability_zone       = element(data.aws_availability_zones.available.names, 0)

  tags = {
    Name = "${var.vpc_name}-${var.subnet01_private_secondary_name}"
  }
}

resource "aws_subnet" "private_secondary_02" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet02_private_secondary_block
  map_public_ip_on_launch = false
  availability_zone       = element(data.aws_availability_zones.available.names, 1)

  tags = {
    Name = "${var.vpc_name}-${var.subnet02_private_secondary_name}"
  }
}
