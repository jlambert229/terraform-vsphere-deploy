

terraform {
  backend "consul" {
    address = "10.1.110.99:8500"
    path    = "tf/state"
  }

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.3.1"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "3.6.0"
    }
    consul = {
      source  = "hashicorp/consul"
      version = "2.15.1"
    }
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "2.1.1"
    }
  }
}

provider "vsphere" {
  user                 = data.vault_generic_secret.vmw.data["username"]
  password             = data.vault_generic_secret.vmw.data["password"]
  vsphere_server       = data.consul_keys.consul.var.vmw_endpoint
  allow_unverified_ssl = true
}

provider "random" {}

provider "vault" {
  address = var.vault_address
}

provider "consul" {
  address    = var.consul_address
  datacenter = "dc1"
}