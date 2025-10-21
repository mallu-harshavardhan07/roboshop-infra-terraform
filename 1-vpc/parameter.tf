resource "aws_ssm_parameter" "store_vpc" {
  name  = "/Roboshop/Dev/vpc_id"
  type  = "String"
  value = module.create_vpc.vpc_id
}
resource "aws_ssm_parameter" "public_subnet_ids" {
  name  = "/roboshop/dev/public_subnet_ids"
  type  = "StringList"
  value = join(",", module.create_vpc.public_subnet_ids)
}

resource "aws_ssm_parameter" "private_subnet_ids" {
  name  = "/roboshop/dev/private_subnet_ids"
  type  = "StringList"
  value = join(",", module.create_vpc.private_subnet_ids)
}

resource "aws_ssm_parameter" "database_subnet_ids" {
  name  = "/roboshop/dev/database_subnet_ids"
  type  = "StringList"
  value = join(",", module.create_vpc.database_subnet_ids)
}