resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id_igw

  tags = {
    Name = "IGW"
  }
}