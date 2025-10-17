module "create_sg" {
    source = "git::https://github.com/mallu-harshavardhan07/security_group-module.git?ref=main"
    project = var.project
    env = var.env
    sg_name = "${var.project}-frontend"
    sg_description = var.sg_description
    vpc_id = data.aws-aws_ssm_parameter.get_vpc_id


}

# Inputs required for creating security group
# 1) project
# 2) env
# 3) sg_name
# 4) sg_description
# 5) vpc_id

/* output "sg_id" {
    value = aws_security_group.allow_tls.id
  
} */