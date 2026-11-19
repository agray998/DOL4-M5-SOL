module "ec2_1" {
  source = "./EC2"
  subnet_id = "subnet-0d38130e159203e67"
}

module "ec2_2" {
  source = "./EC2"
  instance_name = "instance-2"
  subnet_id = "subnet-0314a8f54b92f2b4b"
}
