resource "google_service_account" "sa-name" {
  account_id = "my-test-account"
  display_name = "test"
}

resource "google_project_iam_member" "create_member" {
  project = "asnbile"
  role    = "roles/compute.viewer"
  member  = "serviceAccount:${google_service_account.sa-name.email}"
}
