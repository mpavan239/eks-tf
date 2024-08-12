# main.tf

terraform {
  backend "s3" {
    bucket         = "your-s3-bucket-name"
    key            = "terraform/state/terraform.tfstate"
    region         = var.region
    dynamodb_table = "your-dynamodb-table-name"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}

# Include the resource files
module "vpc" {
  source = "./vpc.tf"
}

module "subnet" {
  source = "./subnet.tf"
}

module "route_table" {
  source = "./route-tb.tf"
}

module "nat_gateway" {
  source = "./nat-gw.tf"
}

module "security_groups" {
  source = "./sg.tf"
}
