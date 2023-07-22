provider "aws" {
    region = "us-east-1"
}

terraform {
    backend "s3" {
        bucket = "tf-state-23a-bulat"
        key = "prod/project1/terraform_state.tfstate"
        region = "us-east-1"
    }
}

module "app_vpc" {
    source = "./vpc"
    cidr_block = "192.178.0.0/16"
}

module "app_subnet" {
    source = "./subnet"
    vpc_id = module.app_vpc.vpc_id_out
        
}

module "ec2" {
    source = "./ec2"
    public_ip = true
    app_subnet_id = module.app_subnet.subnet_id_out
}

module "igw" {
    source = "./igw"
    vpc_id_igw = module.app_vpc.vpc_id_out
}

module "RT" {
    source = "./RT"
    igw_id = module.igw.igw_id
    vpc_id_RT = module.app_vpc.vpc_id_out
}

module "association" {
    source = "./RT_Association"
    sub_id = module.app_subnet.subnet_id_out
    rt_id = module.RT.RT_id
}