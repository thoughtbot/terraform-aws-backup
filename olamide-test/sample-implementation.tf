# # Terraform module to manage the Organization backup policy in management account
# module "backup-org-policy" {
#   source    = "./modules/backup-organization-policy"
#   providers = { aws = aws.management }

#   delegate_account_id = local.delegate_account_id
# }

# # Terraform module to manage the Central Backup policy in the delegated backup account
# module "central-backup-policy" {
#   source    = "./modules/central-backup-policy"
#   providers = { aws = aws.backup_eu_central_1 }

#   for_each = {
#     for idx, region_set in local.target_regions :
#     idx => region_set
#   }

#   name                       = "albaik"
#   backup_cron_schedule       = "cron(15 23 * * ? *)"
#   backup_selection_role_name = local.backup_selection_role_name
#   vault_name                 = local.backup_vault_name
#   backup_selection_tags = {
#     Backup = ["true"]
#   }
#   delegate_account_id = local.delegate_account_id

#   target_resource_region = each.value.target_resource_region
#   secondary_vault_region = each.value.secondary_vault_region

#   depends_on = [
#     module.backup-org-policy,
#   ]
# }

# # Backup vaults for each account / region meant to store a backup
# module "albaik_web_eu_central_1_vault" {
#   source    = "./modules/backup-vault"
#   providers = { aws = aws.albaik_web_eu_central_1 }

#   vault_name = local.backup_vault_name
# }

# module "albaik_web_eu_west_1_vault" {
#   source    = "./modules/backup-vault"
#   providers = { aws = aws.albaik_web_eu_west_1 }

#   vault_name = local.backup_vault_name
# }

# module "backup_eu_central_1_vault" {
#   source    = "./modules/backup-vault"
#   providers = { aws = aws.backup_eu_central_1 }

#   vault_name = local.backup_vault_name
# }

# module "backup_eu_west_1_vault" {
#   source    = "./modules/backup-vault"
#   providers = { aws = aws.backup_eu_west_1 }

#   vault_name = local.backup_vault_name
# }

# # Terraform module to create backup selection roles across all target resource accounts.
# module "albaik_web_eu_central_1_backup_selection_role" {
#   source    = "./modules/backup-selection-role"
#   providers = { aws = aws.albaik_web_eu_central_1 }

#   backup_selection_role_name = local.backup_selection_role_name
# }

# module "backup_eu_central_1_backup_selection_role" {
#   source    = "./modules/backup-selection-role"
#   providers = { aws = aws.backup_eu_central_1 }

#   backup_selection_role_name = local.backup_selection_role_name
# }


# locals {
#   backup_selection_role_name = "backup-selection-role"
#   backup_vault_name          = "albaik_backup_vault"

#   target_regions = [{
#     target_resource_region = "eu-central-1"
#     secondary_vault_region = "eu-west-1"
#   }]
#   delegate_account_id = "653160868077"
# }


