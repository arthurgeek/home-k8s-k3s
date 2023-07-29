terraform {
  cloud {
    organization = "arthurgeek"

    workspaces {
      name = "arpa-home-minio"
    }
  }

  required_providers {
    bitwarden = {
      source  = "maxlaverse/bitwarden"
      version = ">= 0.6.0"
    }

    minio = {
      source = "aminueza/minio"
      version = "1.17.1"
    }
  }
}

locals {
  buckets = [
    "postgres",
    "loki"
  ]
}

module "secrets_s3" {
  source = "./../modules/get-secret-item"
  id = "d572f8f8-7927-4359-a427-ec6aa7ff2fbc"
}
