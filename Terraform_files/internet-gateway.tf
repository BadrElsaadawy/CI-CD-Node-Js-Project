resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.project.id

  tags = {
    Name = "internet-gateway"
  }
}