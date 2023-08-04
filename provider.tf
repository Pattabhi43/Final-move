terraform {
  backend "remote" {
    organization = "AWSprk"

    workspaces {
      name = "Final-move"
    }
  }
}

variable "AWS_ACCESS_KEY" {
  description = "aws access key"
}

variable "AWS_SECRET_KEY_ID" {
  description = "aws secret key"
}

variable "API_TOKEN" {
  description = "api token tf cloud"
}

provider "tfe" {
  token = var.API_TOKEN
}

provider "aws" {
  region = "ap-south-1"
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY_ID
}
