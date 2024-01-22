# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type        = string
}

variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket for the database's remote state"
  type        = string
  default = "terraform-s3-camelodian-qwewqe"
}

variable "db_remote_state_key" {
  description = "The path for the database's remote state in S3"
  type        = string
  default = "stage/terraform.tfstate-qweqwe"
}

variable "instance_type" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
  type        = string
}

variable "min_size" {
  description = "The minimum number of EC2 Instances in the ASG"
  type        = number
}

variable "max_size" {
  description = "The maximum number of EC2 Instances in the ASG"
  type        = number
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 80
}

variable "ssh_port" {
  description = "The port the server will use for SSH requests"
  type        = number
  default     = 22
}

variable "create_ingress" {
  description = "Set to true to create the resource, false to skip"
  type        = bool
  default     = false
}

variable "create_egress" {
  description = "Set to true to create the resource, false to skip"
  type        = bool
  default     = false
}

variable "db_adress" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
  type        = string
}

variable "db_port" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
  type        = number
}