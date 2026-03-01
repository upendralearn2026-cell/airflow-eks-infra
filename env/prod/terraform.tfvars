region = "ap-south-1"

vpc_name = "airflow-prod-vpc"
vpc_cidr = "10.0.0.0/16"

azs = ["ap-south-1a", "ap-south-1b"]

cluster_name    = "airflow-prod"
cluster_version = "1.29"

# 🔥 Production worker nodes
node_instance_type = "m6i.xlarge"

desired_size = 3
min_size     = 2
max_size     = 6

# RDS
db_name     = "airflow"
db_username = "airflow"
db_password = "ChangeThisStrongPassword123!"

# DAG bucket
dags_bucket_name = "airflow-dags-prod"