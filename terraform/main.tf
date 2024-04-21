

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
}
