resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.project.id
  tags = {
    Name = "public-route-table"
  }
}

resource "aws_route_table_association" "associate-public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public-route-table.id
}


resource "aws_route_table" "private-route-table" {
  vpc_id = aws_vpc.project.id
  tags = {
    Name = "private-route-table"
  }
} 

resource "aws_route_table_association" "associate-private" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private-route-table.id
}