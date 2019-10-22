provider "aws" {
  region = "ap-northeast-1"
}

module "main" {
  name = "terraform-cloud-sample-prod"
}
