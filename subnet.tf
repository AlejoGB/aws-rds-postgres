resource "aws_subnet" "rds-subnet-1" {
  vpc_id            = aws_vpc.rds-vpc.id
  cidr_block        = var.subnet_cidr_block_1
  availability_zone = var.subnet_av_zone_1
  tags = {
    Name                 = "rds-subnet-${var.component}-${var.deployment_identifier}"
    Component            = var.component
    DeploymentIdentifier = var.deployment_identifier
  }
}

resource "aws_subnet" "rds-subnet-2" {
  vpc_id            = aws_vpc.rds-vpc.id
  cidr_block        = var.subnet_cidr_block_2
  availability_zone = var.subnet_av_zone_2
  tags = {
    Name                 = "rds-subnet-${var.component}-${var.deployment_identifier}"
    Component            = var.component
    DeploymentIdentifier = var.deployment_identifier
  }
}

resource "aws_db_subnet_group" "postgres_database_subnet_group" {
  name        = "${var.component}-${var.deployment_identifier}"
  description = "Subnet group for ${var.component} PostgreSQL instance."
  subnet_ids  = [aws_subnet.rds-subnet-1.id, aws_subnet.rds-subnet-2.id]

  tags = {
    Name                 = "db-subnet-group-${var.component}-${var.deployment_identifier}"
    Component            = var.component
    DeploymentIdentifier = var.deployment_identifier
  }
}