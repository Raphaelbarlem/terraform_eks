resource "aws_internet_gateway" "eks_igw" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-public-route-table"
    }
  )
}

resource "aws_route_table" "eks_public_route_tables" {
  vpc_id = aws_vpc.eks_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.eks_igw.id
  }

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-public-route-table"
    }
  )
}
