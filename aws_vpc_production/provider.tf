#AWS User Access Key, Secret Access Key for Authentication
provider "aws" {
    region      = var.aws_region
    access_key  = var.aws_access_key
    secret_key  = var.aws_secret_key
  
}