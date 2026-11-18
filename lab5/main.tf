module "public_subnet" {
  count = 2
  source = "./public_subnet"
  vpc_id = aws_vpc.main.id
  rtb_id = aws_route_table.main.id
  sn_index = count.index
  base_cidr = "10.0"
}
