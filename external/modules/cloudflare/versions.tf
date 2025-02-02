terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.8.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.7.0"
    }

    http = {
      source  = "hashicorp/http"
      version = "~> 2.1.0"
    }
  }
}

provider "cloudflare" {
  email   = var.cloudflare_email
  api_key = var.cloudflare_api_key
}

provider "kubernetes" {
  # Use KUBE_CONFIG_PATH environment variables
  # Or in cluster service account
}
