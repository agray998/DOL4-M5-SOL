resource "aws_subnet" "main" {
  vpc_id     = var.vpc_id
  cidr_block = "${var.base_cidr}.${var.sn_index}.0/24"

  tags = {
    Name = "lab-subnet-${var.sn_index}"
  }
}
