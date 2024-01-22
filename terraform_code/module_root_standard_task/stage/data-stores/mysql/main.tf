# terraform {
#   required_version = ">= 0.12, < 0.13"
# }

provider "aws" {
  region = "ap-northeast-2"

  # 2.x 버전의 AWS 공급자 허용
  version = "~> 2.0"
}

# terraform {
#   backend "s3" {
#     # This backend configuration is filled in automatically at test time by Terratest. If you wish to run this example
#     # manually, uncomment and fill in the config below.

#     bucket         = "terraform-s3-camelodian"
#     key            = "stage/terraform.tfstate"
#     region         = "ap-northeast-2"
#     dynamodb_table = "terraform-dynamo-camelodian"
#     encrypt        = true
#   }
# }

# resource "aws_db_instance" "example" {
#   identifier_prefix   = var.db_identi
#   engine              = "mysql"
#   allocated_storage   = 10
#   instance_class      = "db.t2.micro"
#   name                = var.db_name
#   username            = "admin"
#   password            = jsondecode(data.aws_secretsmanager_secret_version.db_password.secret_string)["password"]
#   skip_final_snapshot = true
# }

module "db_instance" {
  source = "../../../modules/data-stores/mysql"
  db_identi = var.db_identi
}

# data "aws_secretsmanager_secret_version" "db_password" {
#   secret_id="soldesk-key"
# }