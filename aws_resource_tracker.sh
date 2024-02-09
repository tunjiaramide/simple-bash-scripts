#!/bin/bash

##############
# Author: Aramide Adetunji
# Date: 8th Feb 2024
# Version: v1
# This script will report AWS Usage
##############

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

#set -x

# List s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

# List ec2 instances
echo "Print list of ec2"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List lambda 
echo "Print list of lambda functions"
aws lambda list-functions | jq '.Functions[].FunctionName'

# List IAM Users
echo "Print list of IAM"
aws iam list-users | jq '.Users[].UserName'


