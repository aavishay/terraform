variable "nginx_version" {
  description = "Version of NGINX Helm chart"
  type        = string
  default     = "<nginx-version>"
}

variable "namespace" {
  description = "Namespace for NGINX deployment"
  type        = string
  default     = "services"
}

