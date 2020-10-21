variable "vm_name" {
    description = "The display name that the Compute Instance will use."
    type = string
}

variable "project" {
    description = "The project that the Compute Instance will reside within."
    type = string
}

variable "net" {
    description = "The VPC network that the Compute Instance will attach to upon creation."
    type = string
}

variable "fwall" {
    description = "VPC Network firewall rules for the project."
    type = string
}

variable "image" {
    description = "The OS image that the compute instance will use during OS installation."
    type = string
}

variable "tags" {
    description = "Tags that will enable or disable network, security and IAM policies"
    type = list(string)
}

variable "user" {
    description = "The user identity of any individuals that may need access to the Compute Instance."
    type = string
}

variable "region" {
    description = "Region for the Google Project"
    type = string
    default = "us-west2"
}

variable "zone" {
    description = "Zone for the Compute Instance"
    type = string
    default = "us-west2-c"
}

variable "vm_type" {
    description = "The machine type specification for the Compute Instance."
    type        = string
    default     = "e2-medium"
}

variable "enable_oslogin" {
    description = "true|false value that enables|disables oslogin for the project"
    type        = string
    default     = "true"
}

variable "credkey" { 
    description = "Path to the '.json' file storing the service account credentials"
    type        = string
}

variable "ssh_pubkey" {
    description = "Path to the ssh public key to be added to the compute instance"
    type        = string
}
