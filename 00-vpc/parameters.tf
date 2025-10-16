resource "aws_ssm_parameter" "vpc_id" {
  name  = "/roboshop/dev/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
  #get the output called vpc_id from the module named vpc
}