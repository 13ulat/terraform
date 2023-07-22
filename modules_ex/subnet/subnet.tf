resource "aws_subnet" "app_subnet" {
    vpc_id = var.vpc_id
    cidr_block = var.subnet_cidr
    tags = {
        Name = "app_subnet"
    }

}