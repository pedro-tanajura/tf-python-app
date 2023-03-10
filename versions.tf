terraform {
  required_version = ">= 1.0.0"

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.18.1"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "2.4.1"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.1.2"
    }
  }
}