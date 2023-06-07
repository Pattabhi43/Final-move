#!/bin/bash

# Set your Terraform Cloud organization and login credentials
ORG_NAME="AWS_prk"
EMAIL="kpramaiah46@gmail.com"
TOKEN="ARiXi68DlsYm5g.atlasv1.QqDlg6KZsdy4NHad3xoe9kA20p9f3xV8k4ohZ8di3Tk1mcdjdycrtdikliTFxFJnAZI"

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
