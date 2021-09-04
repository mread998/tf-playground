resource "aws_vpc" "thc_net" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = var.dev_tags
}

resource "aws_internet_gateway" "thc_igw" {
    vpc_id = aws_vpc.thc_net.id
  
    tags = var.dev_tags
}

resource "aws_subnet" "thc_sub_pub" {
    vpc_id = aws_vpc.thc_net.id
    cidr_block = var.dev_pub_sub_a

    tags = var.dev_tags

}

resource "aws_subnet" "thc_sub_pri" {
    vpc_id = aws_vpc.thc_net.id
    cidr_block = var.dev_pub_sub_a

    tags = var.dev_tags
}

resource "aws_route_table" "thc_pub_rot" {
    vpc_id = aws_vpc.thc_net.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.thc_igw.id
    }

    tags = var.dev_tags
}

resource "aws_route_table" "thc_pri_rot" {
    vpc_id = aws_vpc.thc_net.id

    route{
        cidr_block = var.dev_pri_sub_a
    }

    tags = var.dev_tags
  
}

resource "aws_route_table_association" "thc_rta_pub" {
    subnet_id = aws_subnet.thc_sub_pub.id
    route_table_id = aws_route_table.thc_pub_rot.id

}

resource "aws_route_table_association" "thc_rta_pri" {
    subnet_id = aws_subnet.thc_sub_pri.id
    route_table_id = aws_route_table.thc_pri_rot.id
  
}