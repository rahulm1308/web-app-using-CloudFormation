#!/bin/bash

# Define your CloudFormation stack name

# Delete the CloudFormation stack
echo "Deleting CloudFormation stack: $1"
aws cloudformation delete-stack --stack-name $1

# Wait until stack deletion is complete
echo "Waiting for stack deletion to complete..."
aws cloudformation wait stack-delete-complete --stack-name $1

echo "Infrastructure deletion complete."
