resource "google_pubsub_topic" "prueba" {
  name = "us-east1-prueba-deploy-${var.environment}"
}

resource "google_pubsub_subscription" "prueba-sub" {
  name                       = "us-east1-prueba-deploy-sub-${var.environment}"
  topic                      = google_pubsub_topic.prueba
  message_retention_duration = "1800s"
}