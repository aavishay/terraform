resource "google_container_cluster" "cluster" {
  name                = var.cluster
  location            = var.zone
  initial_node_count  = 3

  node_config {
    machine_type  = "e2-micro"
    preemptible   = true
  }
}
