# terraform {
#   required_version = ">= 0.12, < 0.13"
# }

# terraform {
#   backend "s3" {

#     # This backend configuration is filled in automatically at test time by Terratest. If you wish to run this example
#     # manually, uncomment and fill in the config below.

#     bucket         = "terraform-s3-camelodian"
#     key            = "global/s3/terraform.tfstate"
#     region         = "ap-northeast-2"
#     dynamodb_table = "terraform-dynamo-camelodian"
#     encrypt        = true

#   }
# }

provider "aws" {
  region = "ap-northeast-2"

  # 2.x 버전의 AWS 공급자 허용
  version = "~> 2.0"
}

# resource "aws_db_instance" "default" {
#   allocated_storage    = 10
#   db_name              = "mydb"
#   engine               = "mysql"
#   engine_version       = "5.7"
#   instance_class       = "db.t3.micro"
#   username             = "foo"
#   password             = "foobarbaz"
#   parameter_group_name = "default.mysql5.7"
#   skip_final_snapshot  = true
# }

resource "aws_db_instance" "example" {
  identifier_prefix   = "terraform-up-and-running"
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t3.micro"

  username            = "admin"

  name                = var.db_name
  skip_final_snapshot = true

  password            = jsondecode(data.aws_secretsmanager_secret_version.db_password.secret_string)["password"]

}

data "aws_secretsmanager_secret_version" "db_password" {
  secret_id="soldesk-key"
}


