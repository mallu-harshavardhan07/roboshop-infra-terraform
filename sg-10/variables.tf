variable "project" {
    default = "practice"
}
variable "env" {
  default = "prod"
}
variable "sg_name" {
  type = string
}
variable "sg_description" {
  type =string
  default = "creating for frontend"
}
variable "vpc_id" {
  type=string 
}
