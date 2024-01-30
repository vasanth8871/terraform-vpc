variable "project" {
  default = "test"
}

variable "vpc_cidr" {
  default = "172.16.0.0/16"
}

variable "vpc_subnets" {
  default = "1"
}

variable "type" {
  description = "Instance type"    
  default = "t2.micro"
}

variable "ami" {
  description = "amazon linux 2 ami"
  default = "ami-053b0d53c279acc90"
}
variable "key" {
  description = " key_name"
  default = "dockerkey"
}
