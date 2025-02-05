resource "aws_eip" "eks_ngw_eip_1a" {
  domain = "vpc"
  tags = merge(
    local.tags,
    {
      Name                     = "${var.project_name}-eip_1a"
      "kubernetes.io/role/elb" = "1"
    }
  )
}

resource "aws_eip" "eks_ngw_eip_1b" {
  domain = "vpc"
  tags = merge(
    local.tags,
    {
      Name                     = "${var.project_name}-eip_1b"
      "kubernetes.io/role/elb" = "1"
    }
  )
}
