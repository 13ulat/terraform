resource "aws_route_table" "main_route" {
    vpc_id = var.vpc_id_RT

    route {
        cidr_block = var.traffic
        gateway_id = var.igw_id
    }
  
}