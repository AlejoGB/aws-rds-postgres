# TAGGING
component             = "foundrytest"
deployment_identifier = "001"
# SUBNET
subnet_cidr_block_1 = "10.0.1.0/24"
subnet_cidr_block_2 = "10.0.2.0/24"
subnet_av_zone_1    = "us-east-1a"
subnet_av_zone_2    = "us-east-1b"
# VPC
vpc_cidr_block = "10.0.0.0/16"
# SECURITY GROUP
private_network_cidr = "10.0.1.0/24"
# RDS
database_name                 = "alumpostgres"
database_master_user          = "postgres"
database_master_user_password = "postgres"
skip_final_snapshot           = "yes"
database_instance_class       = "db.t2.micro"
database_version              = "12"