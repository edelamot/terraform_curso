provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "b" {
  bucket = "${var.client_name}-${var.project_name}-backend-tfstate"
  /*
  lifecycle {
    prevent_destroy = true
  }
  */
  tags = {
    Name        = "My bucket usuario03"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.b.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "default" {
  bucket = aws_s3_bucket.b.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket                  = aws_s3_bucket.b.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}


# Ya no es necesaria crear tabla dynamoDB para el bloqueo del .tfstate

/*
resource "aws_dynamodb_table" "terraform_locks" {
  name         = "${var.project_name}-${var.client_name}-up-and-running-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
*/