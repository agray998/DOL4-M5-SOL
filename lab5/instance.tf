resource "aws_instance" "main" {
  ami                         = "resolve:ssm:/aws/service/canonical/ubuntu/server/resolute/stable/current/amd64/hvm/ebs-gp3/ami-id"
  instance_type               = "t3.micro"
  associate_public_ip_address = true
  key_name = aws_key_pair.main.key_name
  vpc_security_group_ids      = [aws_security_group.main.id]
  subnet_id                   = aws_subnet.main[0].id
  tags = {
    Name = "lab-instance"
  }
}
