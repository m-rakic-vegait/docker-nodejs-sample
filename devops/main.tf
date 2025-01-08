terraform {
  required_providers {
    awstest = {
      source  = "harshicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.9.0"
}

provider "awstest" {
  region = var.region_name
}

resource "aws_instance" "example" {
  # config
}
