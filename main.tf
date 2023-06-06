terraform {
  required_providers {
    tfe = {
      version = "~> 0.44.0"
    }
  }

cloud {
    organization = "AWS_prk"

    workspaces {
      name = "Conf-2"
    }
  }
}


variable "AWS_ACCESS_KEY" {
  description = "aws access key"
}

variable "AWS_SECRET_KEY_ID" {
  description = "aws secret key"
}

variable "API-token" {
  description = "api token tf cloud"
}

provider "tfe" {
  token = var.API-token
}

provider "aws" {
  region = "ap-south-1"
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY_ID
}
