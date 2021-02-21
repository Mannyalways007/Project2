terraform {
  backend "s3" {
    bucket = "test007-bucket"
    key    = "test/key1dev"
    dynamodb_table = "terraformtest"
    region = "us-east-1"
  }
}