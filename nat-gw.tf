resource "aws_eip" "nat_gateway_1" {
  vpc = true
}

resource "aws_eip" "nat_gateway_2" {
  vpc = true
}

resource "aws_nat_gateway" "nat_gateway_1" {
  allocation_id = aws_eip.nat_gateway_1.id
  subnet_id     = aws_subnet.public_01.id

  tags = {
    Name = "${var.vpc_name}-NAT-GATEWAY-PUBLIC-1"
  }
}

resource "aws_nat_gateway" "nat_gateway_2" {
  allocation_id = aws_eip.nat_gateway_2.id
  subnet_id     = aws_subnet.public_02.id

  tags = {
    Name = "${var.vpc_name}-NAT-GATEWAY-PUBLIC-2"
  }
}

resource "aws_nat_gateway" "private_nat_gateway_1" {
  subnet_id = aws_subnet.private_01.id

  tags = {
    Name = "${var.vpc_name}-NAT-GATEWAY-PRIVATE-1"
  }
}

resource "aws_nat_gateway" "private_nat_gateway_2" {
  subnet_id = aws_subnet.private_02.id

  tags = {
    Name = "${var.vpc_name}-NAT-GATEWAY-PRIVATE-2"
  }
}
