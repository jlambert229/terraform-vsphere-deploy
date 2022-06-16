##################################
# variables file
##################################

variable "vsphere_datacenter" {
  type        = string
  description = "The name of the datacenter."
  default     = "dc-01"
}

variable "vsphere_datastore" {
  type        = string
  description = "The name of the datastore."
  default     = "storage-01"
}

variable "vsphere_compute_cluster" {
  type        = string
  description = "The name or absolute path to the cluster."
  default     = "compute_cluster"
}

variable "vsphere_network" {
  type        = string
  description = "The name of the network."
  default     = "portgroup-01"
}

variable "vsphere_template" {
  type        = string
  description = "The name of the virtual machine template."
  default     = "/templates/vm"
}

variable "vm_name" {
  type        = string
  description = "The name of the virtual machine."
  default     = "test-vm"
}

variable "vm_domain_name" {
  type        = string
  description = "The name of the virtual machine domain."
  default     = "domain"
}

variable "vm_num_cpus" {
  type        = number
  description = "The total number of virtual processor cores to assign to this virtual machine."
  default     = 1
}

variable "vm_memory" {
  type        = number
  description = "The size of the virtual machine's memory, in MB."
  default     = 1024
}

variable "vm_ipv4_address" {
  type        = string
  description = "The IPv4 address assigned to this network adapter. If left blank or not included, DHCP is used."
  default     = "192.168.1.1"
}

variable "vm_ipv4_netmask" {
  type        = number
  description = "The IPv4 subnet mask, in bits (example: 24 for 255.255.255.0)"
  default     = 24
}

variable "vm_ipv4_gateway" {
  type        = string
  description = "The IPv4 default gateway when using network_interface customization on the virtual machine."
  default     = "192.168.1.254"
}

variable "vm_dns_server_list" {
  type        = list(any)
  description = "The list of DNS servers to configure on a virtual machine."
  default     = ["8.8.8.8"]
}

variable "vm_dns_suffix_list" {
  type        = list(any)
  description = "A list of DNS search domains to add to the DNS configuration on the virtual machine."
  default     = ["domain.local"]
}

variable "guestinfo_metadata" {
  type = string
}

variable "guestinfo_userdata" {
  type = string
}