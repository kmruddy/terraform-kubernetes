terraform {
  backend "remote" {
    organization = "TFTMM"

    workspaces {
      name = "qa-kubernetes-cluster"
    }
  }
}

provider "google" {
  version = "3.10.0"
  project = var.google_project
  region  = var.location.gcp
}