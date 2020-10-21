data "google_compute_address" "linux_vm_address" {
    name = var.vm_name
    project = var.project
}