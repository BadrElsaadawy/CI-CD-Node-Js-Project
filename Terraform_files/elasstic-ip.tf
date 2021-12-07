resource "aws_eip" "ip" {

tags = {
    Name = "elasstic-ip"
  }

}