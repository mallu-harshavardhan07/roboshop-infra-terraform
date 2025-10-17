resource "aws_ssm_parameter" "store_sg_id" {
  name  = "/Roboshop/Dev/sg_id"
  type  = "String"
  value = module.create_sg.sg_id
}