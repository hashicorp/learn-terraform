terraform {

  cloud {
    organization = "donorschooseorg"

    workspaces {
      name = "learn-terraform-cloud-test-workflow"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.31.0"
    }
  }

  required_version = "~> 1.2"
}
