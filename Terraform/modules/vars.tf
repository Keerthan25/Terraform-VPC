variable "instance-type" {
  type = string
}
variable "ami" {
  type = string
}

variable "key_pair" {
  type = string
}
variable "private_instance_name" {
  type = string
}
variable "public_instance_name" {
  type = string
}

variable "vpc-cidr-block" {
  type = string
}
variable "PvtSub-cidr-block" {
  type = string
}
variable "PubSub-cidr-block" {
  type = string
}

