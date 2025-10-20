module "create_sg" {
  source = "git::https://github.com/mallu-harshavardhan07/security_group-module.git?ref=main"
  project = "Roboshop"
  env = "Dev"
  sg_name = "my_first_sg"
  sg_description = "creating this security group for frontend"
  vpc_id = data.aws_ssm_parameter.get_vpc.value

}


# Inputs required for creating security group
# 1) project
# 2) env
# 3) sg_name
# 4) sg_description
# 5) vpc_id

#  This below code is written in main module 
#  We get output sg_id  from the module  
/* output "sg_id" {
    value = aws_security_group.allow_tls.id
  
} */

module "create_bastion_sg" {
  source = "git::https://github.com/mallu-harshavardhan07/security_group-module.git?ref=main"
  project = "Roboshop"
  env = "Dev"
  sg_name = "Bastion_sg"
  sg_description = "creating this security group for Bastion"
  vpc_id = data.aws_ssm_parameter.get_vpc.value

}
resource "aws_security_group_rule" "bastion_laptop" {
  type              = "ingress"
  from_port         =  22
  to_port           =  22
  protocol          = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  //source_security_group_id = module.bastion.sg_id
  security_group_id = module.create_bastion_sg.sg_id
}
