# Firewall rules configuration
resource "google_compute_firewall" "vpc_firewall" {
  name    = var.fwall
  network = var.net

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"] # SSH on non-standard port
  }
  # Applies rule to tagged instance
  source_tags = ["ssh-server"]

  # Add dependency for google_compute_network to avoid race condition
  depends_on = [google_compute_network.vpc_network]
}
