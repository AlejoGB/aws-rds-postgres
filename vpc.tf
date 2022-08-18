resource "aws_vpc" "rds-vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name                 = "ds-vpc-${var.component}-${var.deployment_identifier}"
    Component            = var.component
    DeploymentIdentifier = var.deployment_identifier
  }
}