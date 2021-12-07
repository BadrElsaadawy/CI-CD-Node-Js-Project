terraform {
  backend "s3" {
    bucket         = "badr-bucket"
    key            = "Backend/terraform.tfstate"
    region         = "us-east-2"
    #dynamodb_table = "backend"
    access_key = "*******"
    secret_key = "*******"
  }
}