variable "project_id" {
  description = "The Google Cloud project ID."
  type        = string
}

variable "region" {
  description = "The region to deploy the GKE cluster in."
  type        = string
  default     = "asia-east2"
}

variable "cluster_name" {
  description = "The name of the GKE cluster."
  type        = string
  default     = "my-gke-cluster111-terraform"
}

variable "machine_type" {
  description = "The machine type for the cluster nodes."
  type        = string
  default     = "e2-standard-2"
}

variable "network" {
  description = "The VPC network to use for the GKE cluster."
  type        = string
  default     = "default"
}

variable "subnetwork" {
  description = "The subnetwork to use for the GKE cluster."
  type        = string
  default     = "default"
}
