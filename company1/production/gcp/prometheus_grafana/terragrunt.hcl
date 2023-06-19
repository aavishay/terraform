
terraform {
  source      = "../../../../modules/prometheus_grafana"
}

dependencies {
  paths = ["../gke"]
}

