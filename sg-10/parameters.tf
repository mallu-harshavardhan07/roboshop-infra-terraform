resource "aws_ssm_parameter" "store_sg_id" {
  name  = "/${var.project}/${var.env}/sg_id"
  type  = "String"
  value = module.create_sg.sg_id
}

