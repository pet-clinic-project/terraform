# Network Vars
region              = "us-west-2"
vpc_id              = "vpc-062e91b98392ca9a2"
subnet_ids          = ["subnet-071ae7458dd1bc8b4", "subnet-090b5b06da6034d47", "subnet-078d6be8a0e8ec7fe"]
multi_az            = false
publicly_accessible = true

# DB Vars
db_engine                   = "mysql"
db_storage_type             = "gp2"
db_username                 = "techiescamp"
db_instance_class           = "db.t2.micro"
db_storage_size             = 20
set_secret_manager_password = true
set_db_password             = false
db_password                 = "rdssecret"

# Security Group Vars
from_port  = 3306
to_port    = 3306
protocol   = "tcp"
cidr_block = ["0.0.0.0/0"]

# Backup vars
backup_retention_period  = 7
delete_automated_backups = true
copy_tags_to_snapshot    = true
skip_final_snapshot      = true
apply_immediately        = true

# Tag Vars
owner       = "techiescamp"
environment = "stage"
cost_center = "techiescamp-commerce"
application = "petclinic-rds"