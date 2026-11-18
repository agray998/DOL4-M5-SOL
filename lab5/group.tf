resource "aws_security_group" "main" {
  name        = "lab-sg"
  description = "Allow SSH, HTTP and SQL traffic"
  vpc_id      = module.lab_vpc.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.all_addresses]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.all_addresses]
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = [var.all_addresses]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.all_addresses]
  }

  tags = {
    Name = "lab-sg"
  }
}
