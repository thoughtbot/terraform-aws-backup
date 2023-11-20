# terraform {
#   backend "s3" {
#     encrypt        = true
#     bucket         = "terraform-state-653160868077"
#     dynamodb_table = "terraform-state-653160868077"
#     key            = "albaik/central/backup/terraform.tfstate"
#     kms_key_id     = "arn:aws:kms:eu-central-1:653160868077:alias/terraform-state-653160868077"
#     region         = "eu-central-1"
#     role_arn       = "arn:aws:iam::653160868077:role/terraform-state-653160868077"
#   }
# }
