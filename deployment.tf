

# -- vault data load
data "vault_generic_secret" "vmw" {
  path = "kv/vmw/"
}

data "consul_keys" "consul" {
  key {
    name = "vmw_endpoint"
    path = "vmw/endpoint"
  }
  key {
    name = "vmw_dc"
    path = "vmw/dc"
  }
  key {
    name = "vmw_cluster"
    path = "vmw/cluster"
  }
  key {
    name = "vmw_template"
    path = "vmw/template"
  }
}



resource "random_pet" "server" {
  for_each = var.vm_deploy_data
  length   = 1
}

module "vsphere-vm-mk4" {
  source                       = "./modules/vsphere-vm-mk4"
  for_each                     = var.vm_deploy_data
  vsphere_datacenter           = data.consul_keys.consul.var.vmw_dc
  vsphere_compute_cluster      = data.consul_keys.consul.var.vmw_cluster
  vsphere_datastore            = each.value["vsphere_datastore"]
  vsphere_network              = each.value["vsphere_network"]
  vsphere_template             = data.consul_keys.consul.var.vmw_template
  vm_name                      = "test-${random_pet.server[each.key].id}-01"
  vm_num_cpus                  = each.value["vm_num_cpus"]
  vm_memory                    = each.value["vm_memory"]
  guestinfo_metadata           = base64gzip(data.template_file.metadata[each.key].rendered)
  guestinfo_userdata           = data.cloudinit_config.user_data[each.key].rendered

}

data "template_file" "metadata" {
  template = file("${path.module}/metadata.yaml")
  for_each = var.vm_deploy_data
  vars = {
    hostname    = "test-${random_pet.server[each.key].id}-01"
    dhcp        = each.value["vm_dhcp"]
    ip_address  = each.value["vm_ipv4_address"]
    netmask     = each.value["vm_ipv4_netmask"]
    nameservers = jsonencode("${each.value["vm_dns_server_list"]}")
    gateway     = each.value["vm_ipv4_gateway"]
  }
}

data "cloudinit_config" "user_data" {
  for_each = var.vm_deploy_data

  gzip          = true
  base64_encode = true

  part {
    content_type = "text/x-shellscript"
    content      = file("${path.module}/scripts/${each.value["vm_user_data"]}")
  }
}

output "vm_output" {
  value = module.vsphere-vm-mk4[*]
}