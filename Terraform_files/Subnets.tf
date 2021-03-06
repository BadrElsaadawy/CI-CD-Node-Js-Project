resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.project.id
  cidr_block = "10.0.1.0/24"
  availability_zone ="us-east-2b"
  map_public_ip_on_launch = true
  
  tags = {
    Name = "Public"
  }
}


resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.project.id
  cidr_block = "10.0.2.0/24"
  availability_zone ="us-east-2a"
  map_public_ip_on_launch = true
  tags = {
    Name = "private"
  }
}



