terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "eduardo-terraform-usuario03-backend-tfstate"
    key    = "state/terraform.tfstate"
    region = "eu-west-3"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-usuario03-eduardo-up-and-running-locks"
    encrypt        = true
  }
}