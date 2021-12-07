resource "aws_instance" "ansible" {
  ami = "ami-0629230e074c580f2"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  subnet_id = aws_subnet.public.id
  key_name = "my-key"
  vpc_security_group_ids= [aws_security_group.allow_jenkins_http_ssh_https.id]
  tags = {
    Name = "Ansible"
  }


}

resource "aws_instance" "slave" {
  ami = "ami-0629230e074c580f2"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  subnet_id = aws_subnet.public.id
  vpc_security_group_ids= [aws_security_group.allow_jenkins_http_ssh_https.id]
  key_name = "my-key"
  tags = {
    Name = "slave"
  }

}


resource "aws_instance" "Jenkins" {
  ami = "ami-0629230e074c580f2"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  subnet_id = aws_subnet.public.id
  key_name = "my-key"
  vpc_security_group_ids= [aws_security_group.allow_jenkins_http_ssh_https.id]

  tags = {
    Name = "Jenkins"
  }

  


}





