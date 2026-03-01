variable "db_name" {}
variable "db_username" {}
variable "db_password" { sensitive = true }

variable "instance_class" {}
variable "db_subnet_group" {}
variable "security_group_ids" {
  type = list(string)
}