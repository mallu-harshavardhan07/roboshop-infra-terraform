data "aws_ssm_parameter" "get_vpc" {
  name = "/Roboshop/Dev/vpc_id"
}