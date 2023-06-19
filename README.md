# Terraform repository for multi-cloud deployment

## Prerequisites
- Terragrunt and Terraform have been installed

## Deployment workflow
- Deploy GKE cluster on GCP 
  - `cd company1/production/gcp/gke`
  - add your variables to `terraform.tfvars`
  - `terragrunt apply`

- Update local kubeconfig file
  - `gcloud container clusters get-credentials production --location us-central1-a`

- Deploy Prometheus & Grafana with service type LoadBalancer to monitoring namespace
  - `cd company1/production/gcp/prometheus_grafana`
  - add your variables to `terraform.tfvars`
  - `terragrunt apply`
  - `kubectl get service -n monitoring grafana -o jsonpath='{.status.loadBalancer.ingress[0].ip}'`
  - Browse to the above IP address

- Deploy NGINX with service type LoadBalancer to services namespace
  - `cd company1/production/gcp/nginx`
  - add your variables to `terraform.tfvars`
  - `terragrunt apply`
  - `kubectl get service -n services nginx -o jsonpath='{.status.loadBalancer.ingress[0].ip}'`
  - Browse to the above IP address

- Destroy the whole environment
  - `cd company1/production/gcp/nginx`
  - `terragrunt destroy`
  - `cd company1/production/gcp/prometheus_grafana`
  - `terragrunt destroy`
  - `cd company1/production/gcp/gke`
  - `terragrunt destroy`

## Assumptions:
- Prometheus_Grafana module depends on GKE module
- NGINX module depends on GKE module


