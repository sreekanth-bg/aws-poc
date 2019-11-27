variable "key_name" {
  default = "sbg_ubuntu"
}

variable "region" {
  default = "us-east-1"
}

variable "shared_credentials_file" {
  default = "~/.aws/credentials"
}

variable "profile" {
  default = "default"
}

variable "my_ami" {
  type = map(string)
  default = {
    "us-west-1" = "ami-09573a2ba9fb7af70"
    "us-east-1" = "ami-07d0cf3af28718ef8"
  }
  description = "https://cloud-images.ubuntu.com/locator/ec2/"
}

locals {
  domain_name = "sreekanth-bg.in"
  record_name = "pc"
}
