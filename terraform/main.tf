provider "aws" {
  region                  = var.region
  shared_credentials_file = var.shared_credentials_file
  profile                 = var.profile
}

resource "aws_instance" "web" {
  ami           = var.my_ami[var.region]
  instance_type = "t1.micro"
  key_name      = "sbg_ubuntu"
  security_groups = ["ssh-only"]

  tags = {
    Name = "sree"
  }
}

