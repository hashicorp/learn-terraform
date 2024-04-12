terraform {

  cloud {
    organization = "TFC-Unification-Test-Org-1"

    workspaces {
      name = "test-unified-provider-joey"
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
