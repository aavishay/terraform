
provider "helm" {
  kubernetes {
    config_path    = "~/.kube/config"
    config_context = "gke_test-204015_us-central1-a_production"
  }
}

