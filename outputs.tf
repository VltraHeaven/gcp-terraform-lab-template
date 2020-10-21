# Outputs
output "linux_vm_zone" {
  value = google_compute_instance.linux_vm_instance.zone
  description = "Returns the assigned zone for the linux_vm_instance"
}

output "linux_vm_self_link" {
  value = google_compute_instance.linux_vm_instance.self_link
  description = "Returns self_link information for the linux vm instance"
}

output "linux_vm_address" {
  value = data.google_compute_address.linux_vm_address.address
}