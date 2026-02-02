terraform {
  backend "gcs" {
    bucket  = "atlantis-vamsi-state-bucket"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.16.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.29.0, < 3.0.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.15.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region = var.region
}



