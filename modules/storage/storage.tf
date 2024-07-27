resource "google_storage_bucket" "test-bucket-for-state" {
  name        = "tf-bucket-725597"
  location    = "US"
  force_destroy = true
  uniform_bucket_level_access = true
}
