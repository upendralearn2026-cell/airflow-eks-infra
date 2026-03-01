resource "aws_db_instance" "airflow" {
  identifier = "airflow-db"

  engine         = "postgres"
  instance_class = var.instance_class

  allocated_storage = 20

  db_name  = var.db_name
  username = var.db_username
  password = var.db_password

  publicly_accessible = false
  multi_az            = true

  db_subnet_group_name = var.db_subnet_group
  vpc_security_group_ids = var.security_group_ids
}