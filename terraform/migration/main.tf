provider "aws" {
  region = "ap-northeast-1"
}

# terraform {
#   backend "s3" {
#     bucket = "sbtk-tfstate"
#     key = "terraform-cloud-sample/terraform/migration/migration.tfstate"
#     region = "ap-northeast-1"
#   }
# }

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "sample-org"

    workspaces {
      name = "terraform-cloud-sample-migration"
    }
  }
}

module "main" {
  source = "../modules"
  name = "terraform-cloud-sample-migration"
}
