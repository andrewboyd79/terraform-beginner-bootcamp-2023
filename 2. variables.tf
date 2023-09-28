#Input variables

variable "environment" {
  description = "Environment name" # Should be Dev, Pre-prod or Prod
  type        = string
  default     = "dev"
}

variable "region" {
  description = "Region in which AWS resources are created"
  type        = string
  default     = "eu-west-1"
}

variable "Created_By" {
  description = "Information on who/what created the resource"
  type        = string
  default     = "Terraform"
}

variable "owner" {
  description = "Information on who owns/is responsible for the resource"
  type        = string
  default     = "AB"
}

variable "randomised_string" {
  description = "Result of the randomised string generator"
  type = string
  default = "random_string.s3_bucket_name.result" 
}

# variable "variable_name" {
#  description = "Variable description" # Should be present
#  type        = #Input variable type
#  default     = "Variable default value"
# }