module "lab_vpc" {
  source = "./vpc"
}

module "public_subnet" {
  count = 2
  source = "./public_subnet"
  vpc_id = module.lab_vpc.vpc_id
  rtb_id = module.lab_vpc.rtb_id
  sn_index = count.index
  base_cidr = "10.0"
}

module "lab_instance" {
  count = 2
  source = "./instance"
  sn_id = module.public_subnet[count.index].sn_id
  sg_id = aws_security_group.main.id
  instance_name = "lab-instance-${count.index}"
}
