#!/bin/bash

###############################
# Script Name: AWS Usage Reporter
# Description: This script reports the usage of AWS S3, EC2, Lamda, and IAM Users.

# Usage: Run this script with appropriate AWS CLI Configurations and permissions.
#        Ensure AWS CLI is installed and configured with necessary access rights.

# Author: Anmol Karki
# Date: 03/15/2024
# Version: 1.0

# Dependencies: AWS CLI must be installed and configured with access to the resources this script is intended to report on.

# Notes: This script is set to exit on error. It enables command trace output for debugging purposes. Use with caution in production environments.
#######################

# Enabling strict mode for script execution. 
# -x: Enables a mode of the shell where all executed commands are printed to the terminal.
# -e: Causes the script to exit immediately if a command exits with a non-zero status.
# -o pipefail: Sets the exit code of a pipeline to that of the rightmost command to exit with a non-zero status, or to zero if all commands of the pipeline exit successfully.
set -x
set -e
set -o pipefail

# Begin trakcing AWS resources

# list S3 buckets
aws s3 ls

# list EC2 instances
aws ec2 describe-instances

# list AWS Lambda
aws lambda list-functions

# list IAM users
aws iam list-users

