variable "aws_region" {
	default = "us-east-1"

}


variable "ami_id" {

	description = "AMI ID for EC2 instance"

}


variable "instance_type" {
	default = "t2.micro"

}


variable "bucket_name" {

	default = "my-monitoring-backup-bucket"
}


variable "subnet_ids" {

  type = list(string)

}

variable "lb_security_group" {

  type = string
}
