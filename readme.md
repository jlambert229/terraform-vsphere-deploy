## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_consul"></a> [consul](#requirement\_consul) | 2.15.1 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.3.1 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | 3.6.0 |
| <a name="requirement_vsphere"></a> [vsphere](#requirement\_vsphere) | 2.1.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudinit"></a> [cloudinit](#provider\_cloudinit) | 2.2.0 |
| <a name="provider_consul"></a> [consul](#provider\_consul) | 2.15.1 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.3.1 |
| <a name="provider_template"></a> [template](#provider\_template) | 2.2.0 |
| <a name="provider_vault"></a> [vault](#provider\_vault) | 3.6.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vsphere-vm-mk4"></a> [vsphere-vm-mk4](#module\_vsphere-vm-mk4) | ./modules/vsphere-vm-mk4 | n/a |

## Resources

| Name | Type |
|------|------|
| [random_pet.server](https://registry.terraform.io/providers/hashicorp/random/3.3.1/docs/resources/pet) | resource |
| [cloudinit_config.user_data](https://registry.terraform.io/providers/hashicorp/cloudinit/latest/docs/data-sources/config) | data source |
| [consul_keys.consul](https://registry.terraform.io/providers/hashicorp/consul/2.15.1/docs/data-sources/keys) | data source |
| [template_file.metadata](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |
| [vault_generic_secret.vmw](https://registry.terraform.io/providers/hashicorp/vault/3.6.0/docs/data-sources/generic_secret) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_consul_address"></a> [consul\_address](#input\_consul\_address) | consul server address. | `string` | `"http:<ip>:8500"` | no |
| <a name="input_vault_address"></a> [vault\_address](#input\_vault\_address) | vault server address. | `string` | `"http:<ip>:8200"` | no |
| <a name="input_vm_deploy_data"></a> [vm\_deploy\_data](#input\_vm\_deploy\_data) | n/a | <pre>map(object({<br>    vsphere_datastore  = string<br>    vsphere_network    = string<br>    vm_num_cpus        = number<br>    vm_memory          = number<br>    vm_dhcp            = string<br>    vm_ipv4_address    = string<br>    vm_ipv4_netmask    = number<br>    vm_ipv4_gateway    = string<br>    vm_dns_server_list = list(string)<br>    vm_user_data       = string<br><br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm_output"></a> [vm\_output](#output\_vm\_output) | n/a |
