terraform {
    required_version = ">=1.0"
    required_providers {
        random = {
          source  = "hashicorp/random"
        }
        wiz = {
          version = " ~> 1.0"
          source = "tf.app.wiz.io/wizsec/wiz"
      }
    }
 }

 provider "wiz" {
   environment = "test"
 }

 provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Owner = "${var.owner-tag}"
    }
  }
}

resource "random_string" "random" {
  length           = 6
  special          = false
  lower            = true  
}

resource "random_pet" "prefix" {}

locals {
  random_name = "${random_pet.prefix.id}-${random_string.random.result}"
}

locals {
  cluster_name = "eks-${local.random_name}"
}