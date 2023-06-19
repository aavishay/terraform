variable "prometheus_version" {
  description = "Version of Prometheus Helm chart"
  type        = string
  default     = "<prometheus-version>"
}

variable "grafana_version" {
  description = "Version of Grafana Helm chart"
  type        = string
  default     = "<grafana-version>"
}

variable "namespace" {
  description = "Namespace for Prometheus and Grafana deployment"
  type        = string
  default     = "monitoring"
}

