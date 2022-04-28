terraform {

  cloud {
    organization = "edge-sandbox"

    workspaces {
      name = "learn-terraform-cloud-vcs"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.30.0"
    }
  }

  required_version = ">= 0.14.0"
}
