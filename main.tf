
resource "null_resource" "example" {}

resource "google_storage_bucket" "pivora-gcs" {
  name          = "atlantis-test-resource-vamc"
  project       = var.project_id
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true

  labels = {
    app = "atlantis"
    env = "dev"
  }
}