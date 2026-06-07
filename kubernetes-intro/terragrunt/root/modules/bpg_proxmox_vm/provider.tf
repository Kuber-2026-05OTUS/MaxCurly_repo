terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.82.1"
    }
  }
}

provider "proxmox" {
  endpoint = "https://pve.local:8006/"
  insecure = true
}
