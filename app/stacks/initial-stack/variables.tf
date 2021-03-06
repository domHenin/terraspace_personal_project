//variable "server_ami" {
//  description = "instance owner"
//  type        = string
//}

variable "name" {
  description = "name used in filter"
  type        = string
}

variable "int_type" {
  description = "type of instance used"
  type        = string
}

variable "int_tag" {
  description = "name of used tag"
  type        = string
}

variable "subnet_id" {
  description = "subnet for instance"
  type = string
}