# variable "target_regions" {
#   type = list(object({
#     target_resource_region = string,
#     secondary_vault_region = string
#   }))
#   description = "The target resource region to monitor for resources to be backed-up, and the secondary vault region to store the backups for the target resources. This input expects a list of region pairs as each target resource region should have it's corresponding secondary backup region. By default the primary backup region is the region as the target resource region."
# }