resource "aws_instance" "ram" {
    ami = var.ami_id1
    instance_type = var.type1
    subnet_id = aws_subnet.pub_sub.id
    vpc_security_group_ids = [aws_security_group.sgr.id]
    associate_public_ip_address = true                   
}
  
resource "aws_instance" "pv_server" {
  ami = var.ami_id2
  instance_type = var.type2
  vpc_security_group_ids = [aws_security_group.sgr.id]
  subnet_id = aws_subnet.pv_sub.id
}
