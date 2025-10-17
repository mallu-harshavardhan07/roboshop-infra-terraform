resource "aws_ssm_parameter" "vpc_id" {
  name  = "practice/prod/vpc_id"
  type  = "String"
  value = module.create_vpc.vpc_id
}