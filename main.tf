resource "google_service_account" "sa-name" {
  account_id = "my-test-account"
  display_name = "test"
}

resource "google_project_iam_member" "firestore_owner_binding" {
  project = "asnbile"
  role    = "roles/compute.viewer"
  member  = "serviceAccount:${google_service_account.sa-name.email}"
}