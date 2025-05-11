terraform {
  required_version = ">=1.8.0"

  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = ">= 1.50.1"
    }

    talos = {
      source  = "siderolabs/talos"
      version = ">= 0.7.1"
    }

    http = {
      source  = "hashicorp/http"
      version = ">= 3.4.5"
    }

    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.17.0"
    }

    kubectl = {
      source  = "alekc/kubectl"
      version = ">= 2.1.3"
    }

    tls = {
      source  = "hashicorp/tls"
      version = ">= 4.0.6"
    }
  }
}
