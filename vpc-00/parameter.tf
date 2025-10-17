resource "aws_ssm_parameter" "store_vpc_id" {
  name  = "/practice/prod/vpc_id"
  type  = "String"
  value = module.create_vpc.vpc_id
}


# This is for getting data from the aws_ssm_parameter
# data "aws_ssm_parameter" "get_vpc_id" {
#   name = "/practice/prod/vpc_id"
# }