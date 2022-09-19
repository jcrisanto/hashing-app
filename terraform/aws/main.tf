terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "hashing_app_server" {
  ami           = "ami-068663a3c619dd892"
  instance_type = "t2.micro"

  tags = {
    Name = "HashingAppServerInstance",
    MadeWith = "Terraform"
  }
}
