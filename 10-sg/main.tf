module "sg"{
    source = "git::https://github.com/mallu-harshavardhan07/security_group-module.git?ref=main"
    project = "roboshop"
    env = "dev"

    sg_name = "my_sg"
    sg_description = "creating sg module for frontend"
    vpc_id = data.aws_ssm_parameter.vpc_id.value

}