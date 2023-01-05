variable "is_aws_profile_used" {
  description = "Indicate if you are using an aws-cli profile or not (for local deployment only, must be equal to false on Jenkins)"
  type        = bool
  default     = false
}

terraform {
  required_version = ">= 1.0.0"
  aws = {
    source  = "hashicorp/aws"
    version = "~> 4.48.0"
  }
}

provider "aws" {
  profile = var.is_aws_profile_used ? var.aws_cli_profile : null
  region  = var.region
}
