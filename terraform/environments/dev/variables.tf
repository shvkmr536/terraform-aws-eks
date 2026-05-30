variable "aws_region" {}
variable "environment" {}
variable "vpc_cidr" {}
variable "platform" {}
variable "os_type" {}
variable "team" {}
variable "ami_id" {}
variable "instance_type" {}
variable "key_name" {}
variable "azs" {
  type = list(string)

}
variable "allocated_storage" {}
variable "storage_type" {}
variable "engine" {}
variable "engine_version" {}
variable "instance_class" {}
variable "db_name" {}
variable "username" {}
variable "password" {}
