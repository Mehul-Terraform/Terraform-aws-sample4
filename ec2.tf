resource "aws_instance" "KCS-AWS-TF01" {
  ami           = "ami-0010d386b82bc06f0"
  key_name      = "KCS-AWS-TF-KeyPair"
  instance_type = "t2.nano"
  vpc_security_group_ids = ["aws_security_group.KCS-AWS-TF-SG.id"]
  tags = {
    Name = "KCS-AWS-TF01"
    }
  subnet_id  = aws_subnet.KCS-AWS-TF.id
}
  
  resource "aws_instance" "KCS-AWS-TF02" {
  ami           = "ami-0010d386b82bc06f0"
  key_name      = "KCS-AWS-TF-KeyPair"
  instance_type = "t2.nano"
  vpc_security_group_ids = ["aws_security_group.KCS-AWS-TF-SG.id"]
  tags = {
    Name = "KCS-AWS-TF02"
    }
  subnet_id  = aws_subnet.KCS-AWS-TF.id   
}