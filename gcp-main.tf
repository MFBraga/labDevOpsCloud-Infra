resource "google_app_engine_application" "app" {
  project     = "${var.gcp_project_id}"
  location_id = "${var.gcp_region}"
}

resource "google_artifact_registry_repository" "my-repo" {
  location      = "${var.gcp_region}"
  repository_id = "labdevops"
  description   = "Imagens Docker"
  format        = "DOCKER"
}