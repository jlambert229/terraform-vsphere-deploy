##################################
# variables file
##################################

variable "vault_address" {
  type        = string
  description = "vault server address."
  default     = "http:<ip>:8200"
}


variable "consul_address" {
  type        = string
  description = "consul server address."
  default     = "http:<ip>:8500"
}

variable "vm_deploy_data" {
  type = map(object({
    vsphere_datastore  = string
    vsphere_network    = string
    vm_num_cpus        = number
    vm_memory          = number
    vm_dhcp            = string
    vm_ipv4_address    = string
    vm_ipv4_netmask    = number
    vm_ipv4_gateway    = string
    vm_dns_server_list = list(string)
    vm_user_data       = string

  }))

}
