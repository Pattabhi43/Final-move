#!/bin/bash

# Set your Terraform Cloud organization and login credentials
ORG_NAME="AWS_prk"
EMAIL="kpramaiah46@gmail.com"
TOKEN="52x68BR5sYgfiA.atlasv1.b9AZDUCOULTPOgr81dqFGIjrlp3zO2zdUkcrgvD6PLs4f04ja8bnKNYy9q2lU1SaLCw"

# Configure Terraform CLI to use Terraform Cloud
terraform login $TOKEN

# Select the Terraform Cloud organization
terraform login -name=$ORG_NAME

# Verify the organization selection
terraform login -name=$ORG_NAME -check

# Display the organization details
terraform login -name=$ORG_NAME -display

# Optionally, you can also set the Terraform Cloud workspace
# WORKSPACE_NAME="your_workspace_name"
# terraform login -name=$ORG_NAME -workspace=$WORKSPACE_NAME
