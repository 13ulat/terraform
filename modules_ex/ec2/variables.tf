variable "ami_var" {
    default = "ami-06ca3ca175f37dd66"
}
variable "type" {
    default = "t2.micro"
}
variable "public_ip" {
    default = false
    description = "Change to true if you need public IP"
}
variable "app_subnet_id" {
}