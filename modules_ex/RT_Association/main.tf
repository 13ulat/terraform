resource "aws_route_table_association" "association" {
    subnet_id = var.sub_id
    route_table_id = var.rt_id
}