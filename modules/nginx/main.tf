resource "helm_release" "nginx" {
  name       = "nginx"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx"
  version    = var.nginx_version
  namespace  = var.namespace
  create_namespace = true

  values = [
    <<EOF
service:
  type: LoadBalancer
EOF
  ]
}

