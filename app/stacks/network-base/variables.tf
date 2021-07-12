variable "vpc_cidr" {
  description = "used cidr block for vpc"
  type        = string
}

variable "vpc_tag" {
  description = "tag used for VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "used cidr block for subnet"
  type        = string
}

variable "sg_port" {
  description = "port used for traffic"
  type        = number
}

variable "allow_inbound_cidrs" {
  description = "allowing inbound with cidrs range"
  type        = list(string)
}

variable "sg_tag" {
  description = "allow tls"
  type        = string
}