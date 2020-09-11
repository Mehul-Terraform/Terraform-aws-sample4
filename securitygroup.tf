resource "aws_security_group" "KCS-AWS-TF-SG" {
  name        = "KCS-AWS-TF-SG"
  description = "Allow TLS inbound traffic"
  vpc_id      =  aws_vpc.KCS-AWS-TF.id
 
ingress {
  description = "TLS from VPC"
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }

egress {
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "KCS-AWS-TF-SG"
  }
}
