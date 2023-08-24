variable "aws_region" {
  default = "us-west-2"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_iam_account_password_policy" "this" {
  minimum_password_length = 1
  #minimum_password_length = 14
  require_lowercase_characters = true
  require_uppercase_characters = true
  require_numbers = true
  require_symbols = false
  allow_users_to_change_password = true
  max_password_age = 90
  apassword_reuse_prevention  = true
  password_reuse_prevention = 10
  hard_expiry = false
}
