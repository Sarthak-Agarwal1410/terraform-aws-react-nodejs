variable "aws_region" {
  description = "AWS region"
  # default     = "eu-west-2"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  # default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_a" {
  description = "Public subnet CIDR block in AZ A"
  #default     = "10.0.1.0/24"
}

variable "public_subnet_cidr_b" {
  description = "Public subnet CIDR block in AZ B"
  #default     = "10.0.2.0/24"
}

variable "private_subnet_cidr_a" {
  description = "Private subnet CIDR block in AZ A"
  #default     = "10.0.3.0/24"
}

variable "private_subnet_cidr_b" {
  description = "Private subnet CIDR block in AZ B"
  #default     = "10.0.4.0/24"
}

variable "availability_zone_a" {
  description = "Availability Zone A"
  #default     = "eu-west-2a"
}

variable "availability_zone_b" {
  description = "Availability Zone B"
  #default     = "eu-west-2b"
}

variable "nodejs_ami_id" {
  description = "AMI ID for NodeJS instance"
  #default     = "ami-12345678"
}

variable "instance_type" {
  description = "Instance type for NodeJS server"
 # default     = "t3a.micro"
}

variable "key_name" {
  description = "EC2 Key Pair"
  #default     = "my-key"
}

variable "db_name" {
  description = "Database name"
  #default     = "rds-postgres"
}

variable "db_username" {
  description = "Database username"
  #default     = "admin"
}

variable "db_password" {
  description = "Database password"
  #default     = "4GRh+:7VcZ>C~=_M"
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "nodejs_instance_id" {
  value = aws_instance.nodejs.id
}

output "rds_endpoint" {
  value = aws_db_instance.postgres.endpoint
}

output "sqs_queue_url" {
  value = aws_sqs_queue.main_queue.url
}
