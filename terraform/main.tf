


module "sandboxdev-aft" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "adipurush.aws+sandboxdev@gmail.com"
    AccountName               = "sandboxdev-aft"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "adipurush.aws+sandboxdev@gmail.com"
    SSOUserFirstName          = "SandboxDev"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "sandboxdev-aft"
    change_reason       = "Agent based AFT account creation"
  }
  account_customizations_name = "sandbox"
}


module "Dev-NonProd" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "adikelkar.aws+dev@gmail.com"
    AccountName               = "Dev-NonProd"
    ManagedOrganizationalUnit = "Non-Prod"
    SSOUserEmail              = "adikelkar.aws+dev@gmail.com"
    SSOUserFirstName          = "Dev"
    SSOUserLastName           = "NP"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Dev-NonProd"
    change_reason       = "Adding dev account"
  }
  account_customizations_name = "san"
}
