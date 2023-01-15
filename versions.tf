terraform {
  required_version = ">= 1.2"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.37.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 4.37.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.4.3"
    }
    external = {
      source  = "hashicorp/external"
      version = ">= 2.2.2"
    }
  }
}