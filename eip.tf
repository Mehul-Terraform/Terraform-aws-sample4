resource "aws_eip" "KCS-AWS-TF01" {
  instance = aws_instance.KCS-AWS-TF01.id
  vpc      = true
  tags = {
    Name = "KCS-AWS-TF-IP01"
    }
}

resource "aws_eip" "KCS-AWS-TF02" {
  instance = aws_instance.KCS-AWS-TF02.id
  vpc      = true
  tags = {
    Name = "KCS-AWS-TF-IP02"
    }
}