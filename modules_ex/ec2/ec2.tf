resource "aws_instance" "app_server" {
    ami = var.ami_var
    instance_type = var.type
    associate_public_ip_address = var.public_ip
    subnet_id = var.app_subnet_id
    tags = {
      Name = "App server"
      Departement = "Data"
      Squad = "Java engineers"
      Manageing_Role = "Devops"
   }
}