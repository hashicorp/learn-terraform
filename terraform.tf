terraform {
/*
  cloud {
    organization = "GarrisonTech"

    workspaces {
      name = "terraform-ec2"
    }
  }
*/
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.31.0"
    }
  }

  required_version = "~> 1.2"
}
