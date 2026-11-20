resource "hcloud_placement_group" "control_plane" {
  name = "${local.cluster_prefix}control-plane"
  type = "spread"
  labels = {
    "cluster" = var.cluster_name
  }
}

resource "hcloud_placement_group" "worker" {
  name = "${local.cluster_prefix}worker"
  type = "spread"
  labels = {
    "cluster" = var.cluster_name
  }
}

# Hetzner caps a spread placement group at 10 servers. Workers 11+ go into
# additional groups of 10; the first 10 stay in "worker" so existing servers
# are not moved (changing a server's placement group powers it off).
resource "hcloud_placement_group" "worker_extra" {
  count = max(0, ceil(local.total_worker_count / 10) - 1)
  name  = "${local.cluster_prefix}worker-${count.index + 2}"
  type  = "spread"
  labels = {
    "cluster" = var.cluster_name
  }
}
