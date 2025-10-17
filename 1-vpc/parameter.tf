resource "aws_ssm_parameter" "store_vpc" {
  name  = "/Roboshop/Dev/vpc_id"
  type  = "String"
  value = module.create_vpc.vpc_id
}