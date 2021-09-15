terraform {
  required_version = "0.13.6"
  backend "local" {}

provider "aws" {
  version = "~> 3.45.0"
  region  = "us-east-1"
}

module "alarms" {
  #####
  #####
  #####
}

