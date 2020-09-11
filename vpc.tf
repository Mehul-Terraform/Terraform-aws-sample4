resource "aws_vpc" "KCS-AWS-TF" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
      Name = "KCS-AWS-TF"
  }
}

resource "aws_subnet" "KCS-AWS-TF" {
  vpc_id                  = aws_vpc.KCS-AWS-TF.id
  cidr_block              = "10.0.0.0/16"
  map_public_ip_on_launch = true

  depends_on = [aws_internet_gateway.KCS-AWS-TF]
  tags = {
      Name = "KCS-AWS-TF"
  }
}

resource "aws_internet_gateway" "KCS-AWS-TF" {
  vpc_id = aws_vpc.KCS-AWS-TF.id
  tags = {
      Name = "KCS-AWS-TF"
  }
}

resource "aws_route_table" "KCS-AWS-TF" {
  vpc_id = aws_vpc.KCS-AWS-TF.id
  tags = {
    Name = "KCS-AWS-TF"
  }
  
route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.KCS-AWS-TF.id}"
  }

}
resource "aws_route_table_association" "subnet-association" {
  subnet_id      = "${aws_subnet.KCS-AWS-TF.id}"
  route_table_id = "${aws_route_table.KCS-AWS-TF.id}"
}