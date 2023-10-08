variable "environment" {
  description = "Environment name" # Should be Dev, Pre-prod or Prod
  type        = string
  default = "dev"
}

variable "Created_By" {
  description = "Information on who/what created the resource"
  type        = string
  default = "terraform"
}

variable "owner" {
  description = "Information on who owns/is responsible for the resource"
  type        = string
  default = "ab"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default = "terrahouses"
}

# variable "variable_name" {
#  description = "Variable description" # Should be present
#  type        = #Input variable type
#  default     = "Variable default value"
# }