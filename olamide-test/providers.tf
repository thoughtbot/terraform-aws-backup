# provider "aws" {
#   alias = "management"

#   region = "eu-central-1"
#   assume_role {
#     role_arn = "arn:aws:iam::807599650238:role/aws-backup-management-role"
#   }
# }

# provider "aws" {
#   alias = "albaik_web_eu_central_1"

#   region = "eu-central-1"
#   assume_role {
#     role_arn = "arn:aws:iam::676023626868:role/terraform-execution"
#   }
# }

# provider "aws" {
#   alias = "albaik_web_eu_west_1"

#   region = "eu-west-1"
#   assume_role {
#     role_arn = "arn:aws:iam::676023626868:role/terraform-execution"
#   }
# }

# provider "aws" {
#   alias = "backup_eu_central_1"

#   region = "eu-central-1"
#   assume_role {
#     role_arn = "arn:aws:iam::676023626868:role/terraform-execution"
#   }
# }

# provider "aws" {
#   alias = "backup_eu_west_1"

#   region = "eu-west-1"
#   assume_role {
#     role_arn = "arn:aws:iam::676023626868:role/terraform-execution"
#   }
# }

