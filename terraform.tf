terraform {
/*
#When using the VCS-driven workflow for Terraform Cloud, you do not need to define the cloud block in your configuration.

  cloud {
    organization = "terraformcloud-practice-1"

    workspaces {
      name = "learn-terraform-cloud"
    }
  }
*/
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.28.0"
    }
  }

  required_version = ">= 0.14.0"
}
