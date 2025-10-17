variable "project" {
    default = "practice"
}
variable "env" {
  default = "prod"
}
variable "sg_name" {
  type = string
  default = "frontend"
}
variable "sg_description" {
  type =string
  default = "creating for frontend"
}
