provider "aws" {
  region = "ap-northeast-1"
}

module "main" {
  source = "../modules"
  name = "terraform-cloud-sample-devdev"
}
