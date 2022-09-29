terraform {
/*
  cloud {
    organization = "inspiresia"

    workspaces {
      name = "learn-terraform-cloud-cli"
    }
  }
*/
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  required_version = ">= 0.14.0"
}
