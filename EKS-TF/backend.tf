terraform {
  backend "s3" {
    bucket         = "rahul-terraform-states-2026"
    region         = "ap-south-1"
    key            = "Jenkins-Server-TF/terraform.tfstate"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }

  required_version = ">= 0.13.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.7.0"
    }
  }
}
