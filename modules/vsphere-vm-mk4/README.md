
# vsphere-vm-mk3 module

This module was developed to create a virtual machine from a vSphere template.

---

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_vsphere"></a> [vsphere](#requirement\_vsphere) | 2.0.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vsphere"></a> [vsphere](#provider\_vsphere) | 2.0.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vsphere_virtual_machine.vm](https://registry.terraform.io/providers/hashicorp/vsphere/2.0.2/docs/resources/virtual_machine) | resource |
| [vsphere_compute_cluster.cluster](https://registry.terraform.io/providers/hashicorp/vsphere/2.0.2/docs/data-sources/compute_cluster) | data source |
| [vsphere_datacenter.dc](https://registry.terraform.io/providers/hashicorp/vsphere/2.0.2/docs/data-sources/datacenter) | data source |
| [vsphere_datastore.datastore](https://registry.terraform.io/providers/hashicorp/vsphere/2.0.2/docs/data-sources/datastore) | data source |
| [vsphere_network.network](https://registry.terraform.io/providers/hashicorp/vsphere/2.0.2/docs/data-sources/network) | data source |
| [vsphere_virtual_machine.template](https://registry.terraform.io/providers/hashicorp/vsphere/2.0.2/docs/data-sources/virtual_machine) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vm_dns_server_list"></a> [vm\_dns\_server\_list](#input\_vm\_dns\_server\_list) | The list of DNS servers to configure on a virtual machine. | `list(any)` | <pre>[<br>  "8.8.8.8"<br>]</pre> | no |
| <a name="input_vm_dns_suffix_list"></a> [vm\_dns\_suffix\_list](#input\_vm\_dns\_suffix\_list) | A list of DNS search domains to add to the DNS configuration on the virtual machine. | `list(any)` | <pre>[<br>  "domain.local"<br>]</pre> | no |
| <a name="input_vm_domain_name"></a> [vm\_domain\_name](#input\_vm\_domain\_name) | The name of the virtual machine domain. | `string` | `"domain"` | no |
| <a name="input_vm_ipv4_address"></a> [vm\_ipv4\_address](#input\_vm\_ipv4\_address) | The IPv4 address assigned to this network adapter. If left blank or not included, DHCP is used. | `string` | `"192.168.1.1"` | no |
| <a name="input_vm_ipv4_gateway"></a> [vm\_ipv4\_gateway](#input\_vm\_ipv4\_gateway) | The IPv4 default gateway when using network\_interface customization on the virtual machine. | `string` | `"192.168.1.254"` | no |
| <a name="input_vm_ipv4_netmask"></a> [vm\_ipv4\_netmask](#input\_vm\_ipv4\_netmask) | The IPv4 subnet mask, in bits (example: 24 for 255.255.255.0) | `number` | `24` | no |
| <a name="input_vm_memory"></a> [vm\_memory](#input\_vm\_memory) | The size of the virtual machine's memory, in MB. | `number` | `1024` | no |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | The name of the virtual machine. | `string` | `"test-vm"` | no |
| <a name="input_vm_num_cpus"></a> [vm\_num\_cpus](#input\_vm\_num\_cpus) | The total number of virtual processor cores to assign to this virtual machine. | `number` | `1` | no |
| <a name="input_vsphere_allow_unverified_ssl"></a> [vsphere\_allow\_unverified\_ssl](#input\_vsphere\_allow\_unverified\_ssl) | Boolean that can be set to true to disable SSL certificate verification. | `bool` | `true` | no |
| <a name="input_vsphere_compute_cluster"></a> [vsphere\_compute\_cluster](#input\_vsphere\_compute\_cluster) | The name or absolute path to the cluster. | `string` | `"compute_cluster"` | no |
| <a name="input_vsphere_datacenter"></a> [vsphere\_datacenter](#input\_vsphere\_datacenter) | The name of the datacenter. | `string` | `"dc-01"` | no |
| <a name="input_vsphere_datastore"></a> [vsphere\_datastore](#input\_vsphere\_datastore) | The name of the datastore. | `string` | `"storage-01"` | no |
| <a name="input_vsphere_network"></a> [vsphere\_network](#input\_vsphere\_network) | The name of the network. | `string` | `"portgroup-01"` | no |
| <a name="input_vsphere_password"></a> [vsphere\_password](#input\_vsphere\_password) | This is the password for vSphere API operations. | `string` | `"password"` | no |
| <a name="input_vsphere_server"></a> [vsphere\_server](#input\_vsphere\_server) | This is the vCenter server name for vSphere API operations. | `string` | `"vc-01"` | no |
| <a name="input_vsphere_template"></a> [vsphere\_template](#input\_vsphere\_template) | The name of the virtual machine template. | `string` | `"/templates/vm"` | no |
| <a name="input_vsphere_user"></a> [vsphere\_user](#input\_vsphere\_user) | This is the username for vSphere API operations. | `string` | `"admin"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm_hostname"></a> [vm\_hostname](#output\_vm\_hostname) | n/a |
| <a name="output_vm_ip_address"></a> [vm\_ip\_address](#output\_vm\_ip\_address) | n/a |
<!-- END_TF_DOCS -->