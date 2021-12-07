resource "aws_nat_gateway" "nat-gateway" {
  allocation_id = aws_eip.ip.id
  subnet_id     = aws_subnet.public.id
  

  tags = {
    Name = "NAT-Gateway"
  }
}