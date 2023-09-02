resource "aws_instance" "web" {
  ami           =  "ami-051f7e7f6c2f40dc1"   
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld-git"
  }
}



terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.15.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  profile    = "creds"
} 
