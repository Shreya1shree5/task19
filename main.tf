resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location =   var.region

  remove_default_node_pool = true
  deletion_protection = false
  initial_node_count       = 1

  network    = var.network
  subnetwork = var.subnetwork
}

resource "google_container_node_pool" "primary_nodes" {
  cluster  = google_container_cluster.primary.name
  location = google_container_cluster.primary.location
  node_count = 1

  node_config {
    machine_type = var.machine_type
    disk_type    = "pd-ssd"
    disk_size_gb = 5
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  autoscaling {
    min_node_count = 1
    max_node_count = 5
  }
}
