terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.33.0"
    }
  }
}

# Configura o Provider Google Cloud com o Projeto
provider "google" {
  project = "${var.gcp_project_id}"
  region  = "${var.gcp_region}"
  zone    = "${var.gcp_zone}"
}