resource "aws_instance" "web" {
  ami           =  "ami-051f7e7f6c2f40dc1"   
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld-git"
  }
}

resource "aws_instance" "web-1" {
  ami           =  "ami-051f7e7f6c2f40dc1"   
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld-git-2"
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

provider "aws-1" {
  region  = "${var.AWS_REGION}"   
  access_key=AKIA2KYGLU6YVP7DCQGK
  secret_key=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
} 

variable "AWS_REGION" {}


variable "AWS_ACCESS_KEY_ID" {}

variable "AWS_SECRET_ACCESS_KEY" {}