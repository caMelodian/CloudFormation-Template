# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

# variable "db_password" {
#   description = "The password for the database"
#   type        = string
# }

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "db_name" {
  description = "The name to use for the database"
  type        = string
  default     = "example_database_stage"
}

# variable "bucket_name" {
#   description = "The name of the S3 bucket. Must be globally unique."
#   type        = string
#   default = "terraform-s3-camelodian"
# }

# variable "table_name" {
#   description = "The name of the DynamoDB table. Must be unique in this AWS account."
#   type        = string
#   default = "terraform-dynamo-camelodian"
# }