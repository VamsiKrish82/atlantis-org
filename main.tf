
resource "null_resource" "example" {}

resource "google_storage_bucket" "pivora-gcs-3" {
  name          = "atlantis-test-resource-vamc-3"
  project       = var.project_id
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true

  labels = {
    app = "atlantis"
    env = "dev"
  }
}