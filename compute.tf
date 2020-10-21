# Linux VM Resource

resource "google_compute_instance" "linux_vm_instance" {
  name          = var.vm_name
  machine_type  = var.vm_type
  tags          = var.tags
  zone          = var.zone

  # Add the specified public ssh key to the Compute Instance
  metadata      = {
    "ssh-keys"  = file(var.ssh_pubkey)
  }
  
  # Select the install media for this vm_instance
  boot_disk {
    initialize_params {
      image      = var.image
    }
  }

  # Select the network interface details for this vm_instance
   network_interface {
      network    = var.net
      access_config {
      }
   }

   # Add dependency on google_compute_firewall to avoid race condition
   depends_on = [google_compute_firewall.vpc_firewall]
}
