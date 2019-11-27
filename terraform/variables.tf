variable "profile" {
  default = "default"
}

variable "region" {
  default = "us-east-1"
}

variable "key_name" {
  default = "sbg_ubuntu"
}

variable "instance_count" {
  default = "1"
}

variable "instance" {
  default = "t2.nano"
}

variable "shared_credentials_file" {
  default = "~/.aws/credentials"
}

locals {
  domain_name = "sreekanth-bg.in"
  record_name = "pc"
}

variable "public_key" {
  default = "~/.ssh/sbg-ubuntu.pub"
}

variable "private_key" {
  default = "~/.ssh/sbg-ubuntu.pem"
}

variable "ansible_user" {
  default = "ubuntu"
}

variable "amis" {
  type = map(string)
  default = {
    "us-west-1" = "ami-09573a2ba9fb7af70"
    "us-east-1" = "ami-07d0cf3af28718ef8"
  }
  description = "https://cloud-images.ubuntu.com/locator/ec2/"
}

variable "ami" {
  default = "ami-07d0cf3af28718ef8"
}