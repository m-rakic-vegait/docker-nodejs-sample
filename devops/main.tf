terraform {
  required_providers {
    aws = {
      source = "harshicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region_name
  shared_config_files = ["%USERPROFILE%\\.aws\\config"]
  shared_credentials_files = ["%USERPROFILE%\\.aws\\credentials"]
  profile = var.profile_name
}