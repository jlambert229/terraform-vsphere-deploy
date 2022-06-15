##################################
# outputs file
##################################

output "vm_ip_address" {
  value = vsphere_virtual_machine.vm.default_ip_address
}

output "vm_hostname" {
  value = vsphere_virtual_machine.vm.name
}

