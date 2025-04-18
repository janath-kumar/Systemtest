provider "aws" {

	region = var.aws_region

}

resource "aws_instance" "app_server" {
	ami = var.ami_id
	instance_type =  var.instance_type
	tags = {
		Name = "AppServer"
}

user_data = files("install-prometheus.sh")

}


resource "aws_s3_bucket" "backup_bucket" {
	bucket = var.bucket_name
	acl = "private"
}

resource "aws_lb" "app_lb" {
	name	= "app-load-balancer"
	internal = false
	load_balancer_type = "application"
	subnets = var.subnet_ids
	security_groups = [var.lb_security_group]

}

terraform {
	backend = "s3" {
		bucket = "my-terraform-state-bucket"
		key = "infra/terrafrom.tfstate"
		region = "us-east-1"

}


}

