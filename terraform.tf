# ./terraform.tf
variable "aws_region" {
  type = string
}

variable "domain_name" {
  type = string
}

provider "aws" {
  region = "eu-west-1"
  version = "~> 2.52"
}

module "website" {
  source = "./.deploy/terraform/static-site"
  domain_name = var.domain_name
}
