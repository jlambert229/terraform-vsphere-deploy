# Readme

  ![GitHub release (latest by date)](https://img.shields.io/github/v/release/jlambert229/terraform-vsphere-deploy?style=for-the-badge) 
  ![GitHub](https://img.shields.io/github/license/jlambert229/terraform-vsphere-deploy?style=for-the-badge)
  ![GitHub last commit](https://img.shields.io/github/last-commit/jlambert229/terraform-vsphere-deploy?style=for-the-badge)
  ![terraform-logo-badge](https://img.shields.io/badge/-terraform-blueviolet?style=for-the-badge&logo=terraform)
  ![vmware-logo-badge](https://img.shields.io/badge/-vmware-607078?style=for-the-badge)

This project uses terraform to complete the following tasks.

- Create a random pet name for the vsphere deployment.
- Pulls variable values and secrets from Consul and Vault.
- Deploys a vsphere virtual machine from an Ubuntu Server 20. template.
- Configures the new Ubuntu VM with cloud-init:
  - configures IP address and routing information
  - runs shell scripts with `cloud-init` from the `scripts` directory.

## Requirements

| Name                             | Version |
| -------------------------------- | ------- |
| [consul](#requirement\_consul)   | 2.15.1  |
| [random](#requirement\_random)   | 3.3.1   |
| [vault](#requirement\_vault)     | 3.6.0   |
| [vsphere](#requirement\_vsphere) | 2.1.1   |

## Providers

| Name                              | Version |
| --------------------------------- | ------- |
| [cloudinit](#provider\_cloudinit) | 2.2.0   |
| [consul](#provider\_consul)       | 2.15.1  |
| [random](#provider\_random)       | 3.3.1   |
| [template](#provider\_template)   | 2.2.0   |
| [vault](#provider\_vault)         | 3.6.0   |

## Modules

| Name                                      | Source                   | Version |
| ----------------------------------------- | ------------------------ | ------- |
| [vsphere-vm-mk4](#module\_vsphere-vm-mk4) | ./modules/vsphere-vm-mk4 | n/a     |

## Resources

| Name                                                                                                                       | Type        |
| -------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [random_pet.server](https://registry.terraform.io/providers/hashicorp/random/3.3.1/docs/resources/pet)                     | resource    |
| [cloudinit_config.user_data](https://registry.terraform.io/providers/hashicorp/cloudinit/latest/docs/data-sources/config)  | data source |
| [consul_keys.consul](https://registry.terraform.io/providers/hashicorp/consul/2.15.1/docs/data-sources/keys)               | data source |
| [template_file.metadata](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file)         | data source |
| [vault_generic_secret.vmw](https://registry.terraform.io/providers/hashicorp/vault/3.6.0/docs/data-sources/generic_secret) | data source |

## Inputs

| Name                                       | Description            | Type     | Default            | Required |
| ------------------------------------------ | ---------------------- | -------- | ------------------ | :------: |
| [consul\_address](#input\_consul\_address) | consul server address. | `string` | `"http:<ip>:8500"` |    no    |
| [vault\_address](#input\_vault\_address)   | vault server address.  | `string` | `"http:<ip>:8200"` |    no    |

```hcl
# vm_deploy_data

map(object({
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
```

## Outputs

| Name                              | Description |
| --------------------------------- | ----------- |
| [vm\_output](#output\_vm\_output) | n/a         |
