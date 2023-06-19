
terraform {
  source      = "../../../../modules/nginx"
}

dependencies {
  paths = ["../gke"]
}
