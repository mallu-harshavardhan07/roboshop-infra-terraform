resource "aws_ssm_parameter" "sg_id" {
  name  = "/roboshop/dev/sg_id"
  type  = "String"
  value = module.sg.sg_id
  
}