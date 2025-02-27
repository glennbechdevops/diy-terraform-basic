# DIY Terraform Basic Exercise
This exercise will help you learn basic Terraform concepts including modularization and variable management.

## Exercise Overview
In this exercise, you'll start with a basic Terraform configuration that creates an S3 bucket with a lifecycle policy. The initial code contains hardcoded values. Your task will be to transform this code into a reusable module.

## Starting Point
The initial code creates an AWS S3 bucket with the following characteristics:
- A bucket with a specific name
- A lifecycle rule that moves objects to Glacier storage after 90 days
- Object expiration after 365 days

## Exercise Tasks
1. Review the initial code in `main.tf`
2. Create a module from the existing code:
   - Move the S3 bucket configuration into a folder of your own choosing
   - Replace hardcoded values with variables
   - Define appropriate outputs

3. Implement the following improvements:
   - Make the bucket name configurable
   - Make the lifecycle rule days configurable
   - Make the storage class transition configurable

Have fun!