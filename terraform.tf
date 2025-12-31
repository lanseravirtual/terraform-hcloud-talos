terraform {
  required_version = ">=1.8.0"

  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = ">= 1.57.0"
    }

    talos = {
      source  = "siderolabs/talos"
      version = ">= 0.10.0"
    }

    http = {
      source  = "hashicorp/http"
      version = ">= 3.5.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = ">= 3.1.1"
    }

    kubectl = {
      source  = "alekc/kubectl"
      version = ">= 2.1.3"
    }

    tls = {
      source  = "hashicorp/tls"
      version = ">= 4.1.0"
    }
  }
}

