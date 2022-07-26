resource "google_pubsub_topic" "tftest" {
  name = "us-east1-prueba-deploy-${var.environment}"
}

resource "google_pubsub_subscription" "tftest-sub" {
  name                       = "us-east1-prueba-deploy-sub-${var.environment}"
  topic                      = google_pubsub_topic.tftest.name
  message_retention_duration = "1800s"
}