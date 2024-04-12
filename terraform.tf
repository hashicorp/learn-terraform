terraform {

  cloud {
    organization = "TFC-Unification-Test-Org-1"

    workspaces {
      name = "test-unified-provider-joey"
    }
  }

  required_providers {
    tfe = {
      source = "hashicorp/tfe"
      version = "0.53.0"
    }

    hcp = {
      source = "hashicorp/hcp"
      version = "0.86.0"
    }
  }

  required_version = "~> 1.2"
}
