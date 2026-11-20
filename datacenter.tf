locals {
  # Hetzner removed the datacenters API endpoint (410 deprecated_api_endpoint),
  # so the datacenter name is used as-is and the location is derived from it.
  datacenter_name = var.datacenter_name
}

data "hcloud_location" "this" {
  name = split("-", var.datacenter_name)[0]
}
