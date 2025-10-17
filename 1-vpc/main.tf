module "create_vpc" {
  source = "git::https://github.com/mallu-harshavardhan07/VPC-Terraform.git//vpc_module?ref=main"
  project = "Roboshop"
  env = "Dev"
  vpc_cidr_block = "10.0.0.0/16"
  public_cidr_subnet = ["10.0.1.0/24","10.0.2.0/24"]
  private_cidr_subnet = ["10.0.11.0/24","10.0.12.0/24"]
  database_cidr_subnet = ["10.0.21.0/24","10.0.22.0/24"]
  is_peering_required = false
}

#  Inputs required
#  provide source of the module first 
#  1) Name of the Project - project
#  2) Environment Name    - env
#  3) VPC_CIDR_BLOCKS     - vpc_cidr_block
#  4) Public_cidr_subnet  - public_cidr_subnet
#  5) Private_cidr_subnet - private_cidr_subnet
#  6) Database_cidr_subnet- database_cidr_subnet
#  7) is_peering_required value

# In main vpc module gives us (vpc_id) as output 

