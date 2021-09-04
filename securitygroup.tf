resource "aws_security_group" "thc_pub_web" {
    name = "ThunderchromePublicWebSG"
    vpc_id = aws_internet_gateway.thc_igw.id
  

ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}

tags = var.dev_tags

}