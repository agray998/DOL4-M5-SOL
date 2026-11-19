resource "aws_instance" "example" {
  ami           = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
  instance_type = "t3.micro"
  associate_public_ip_address = true
  subnet_id = var.subnet_id
  tags = {
    Name = var.instance_name
  }
}
