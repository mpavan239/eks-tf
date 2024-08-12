resource "aws_route_table" "private_rt_01" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gateway_1.id
  }

  tags = {
    Name = "${var.vpc_name}-PRIVATE-ROUTE-TABLE-01"
  }
}

resource "aws_route_table" "private_rt_02" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gateway_2.id
  }

  tags = {
    Name = "${var.vpc_name}-PRIVATE-ROUTE-TABLE-02"
  }
}

resource "aws_route_table" "private_secondary_rt_01" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.peer_vpc_block
    nat_gateway_id = aws_nat_gateway.private_nat_gateway_1.id
  }

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gateway_1.id
  }

  tags = {
    Name = "${var.vpc_name}-PRIVATE-ROUTE-TABLE-SECONDARY-01"
  }
}

resource "aws_route_table" "private_secondary_rt_02" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.peer_vpc_block
    nat_gateway_id = aws_nat_gateway.private_nat_gateway_2.id
  }

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gateway_2.id
  }

  tags = {
    Name = "${var.vpc_name}-PRIVATE-ROUTE-TABLE-SECONDARY-02"
  }
}

resource "aws_route_table_association" "public_01" {
  subnet_id      = aws_subnet.public_01.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public_02" {
  subnet_id      = aws_subnet.public_02.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "private_01" {
  subnet_id      = aws_subnet.private_01.id
  route_table_id = aws_route_table.private_rt_01.id
}

resource "aws_route_table_association" "private_02" {
  subnet_id      = aws_subnet.private_02.id
  route_table_id = aws_route_table.private_rt_02.id
}

resource "aws_route_table_association" "private_secondary_01" {
  subnet_id      = aws_subnet.private_secondary_01.id
  route_table_id = aws_route_table.private_secondary_rt_01.id
}

resource "aws_route_table_association" "private_secondary_02" {
  subnet_id      = aws_subnet.private_secondary_02.id
  route_table_id = aws_route_table.private_secondary_rt_02.id
}
