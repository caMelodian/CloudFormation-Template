# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket used for the database's remote state storage"
  type        = string
  default = "terraform-s3-camelodian"
}

variable "db_remote_state_key" {
  description = "The name of the key in the S3 bucket used for the database's remote state storage"
  type        = string
  default = "stage/terraform.tfstate"
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "cluster_name" {
  description = "The name to use to namespace all the resources in the cluster"
  type        = string
  default     = "webservers-stage"
}

# default Instacne type => t2 micro
variable "instance_type" {
  description = "The name to use to namespace all the resources in the cluster"
  type        = string
  default     = "t2.micro"
} 

variable "create_ingress" {
  description = "Set to true to create the resource, false to skip"
  type        = bool
  default = true
}

variable "db_identifier" {
  description = "The name to use to namespace all the resources in the cluster"
  type        = string
  default     = "stage"
} 

variable "stage" {
  description = "The name to use to namespace all the resources in the cluster"
  type        = bool
  default     = true
} 