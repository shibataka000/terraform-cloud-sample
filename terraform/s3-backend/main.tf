provider "aws" {
  region = "ap-northeast-1"
}

terraform {
  backend "s3" {
    bucket = "sbtk-tfstate"
    key = "terraform-cloud-sample/terraform/s3-backend/s3-backend.tfstate"
    region = "ap-northeast-1"
  }
}

module "main" {
  source = "../modules"
  name = "terraform-cloud-sample-s3-backend"
}
