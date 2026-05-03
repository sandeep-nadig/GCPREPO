#create
resource "google_service_account" "test_sa" {
  account_id   = "test-sa-terraform"
  display_name = "Terraform Service Account"
}

resource "google_project_iam_member" "sa_viewer" {
  project = "cohesive-amp-310912"
  role    = "roles/viewer"
  member  = "serviceAccount:${google_service_account.test_sa.email}"
}