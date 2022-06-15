##################################
# tfvars input file
##################################


vault_address  = "http://10.1.110.99:8200"
consul_address = "http://10.1.110.99:8500"

vm_deploy_data = {
  test_vm-01 = {
    vsphere_datastore  = "tpa-dell-ssd-938"
    vsphere_network    = "pg-v110"
    vm_num_cpus        = 2
    vm_memory          = 2
    vm_ipv4_address    = "10.1.110.145"
    vm_ipv4_netmask    = 24
    vm_ipv4_gateway    = "10.1.110.254"
    vm_dns_server_list = ["10.1.100.11"]
    vm_dhcp            = "false"
    vm_user_data       = "placeholder.sh"
  }
}