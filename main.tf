provider "tfe" {
  version  = "~> 0.53.0"
}

provider "hcp" { }
  
resource "hcp_group" "provider_test_group" {
  display_name = "provider_test_group"
  description  = "group created by hcp provider"
}

resource "hcp_project" "provider_test_project" {
  name        = "provider_test_project"
  description = "project created by hcp provider"
}

data "hcp_organization" "provider_test_org" {
  name = "TFC-Unification-Test-Org-1"
}

data "tfe_team" "provider_test_tfe_team" {
  name         = hcp_group.provider_test_group.display_name
  organization = data.hcp_organization.provider_test_org.name
}

data "tfe_project" "provider_test_tfe_project" {
  name = hcp_project.provider_test_project.display_name
  organization = data.hcp_organization.provider_test_org.name
}

resource "tfe_team_project_access" "admin" {
  access       = "read"
  team_id      = tfe_team.provider_test_tfe_team.id
  project_id   = tfe_project.provider_test_tfe_project.id
}
