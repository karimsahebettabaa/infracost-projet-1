variable "region" {
  default = "eu-west-3"
}

variable "vpc_id" {}
variable "subnets" {
  type = list(string)
}

variable "key_name" {}
variable "environment" {
  default = "production"
}

variable "eks_cluster_name" {
  default = "eks-prod"
}

variable "db_password" {}
variable "rds_security_group" {}
variable "rds_subnet_group" {}
