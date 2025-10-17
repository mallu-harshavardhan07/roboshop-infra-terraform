data "aws_ssm_parameter" "get_vpc_id" {
  name = "practice/prod/vpc_id"
}