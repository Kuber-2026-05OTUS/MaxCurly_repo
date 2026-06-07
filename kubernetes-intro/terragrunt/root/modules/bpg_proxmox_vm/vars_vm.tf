variable "vm_acpi" {
  type    = bool
  default = true
}

variable "vm_agent_enable" {
  type    = bool
  default = false
}
variable "vm_agent_timeout" {
  type    = string
  default = "15m"
}
variable "vm_agent_trim" {
  type    = bool
  default = false
}
variable "vm_agent_type" {
  type    = string
  default = "virtio"
}

variable "vm_amd_sev_type" {
  type    = string
  default = "std"
}
variable "vm_amd_sev_allow_smt" {
  type    = bool
  default = true
}
variable "vm_amd_sev_kernel_hashes" {
  type    = bool
  default = false
}
variable "vm_amd_sev_no_debug" {
  type    = bool
  default = false
}
variable "vm_amd_sev_no_key_sharing" {
  type    = bool
  default = false
}

variable "vm_audio_device_device" {
  type    = string
  default = "intel-hda"
}
variable "vm_audio_device_driver" {
  type    = string
  default = "spice"
}
variable "vm_audio_device_enabled" {
  type    = bool
  default = true
}

variable "vm_bios" {
  type    = string
  default = "seabios"
}

variable "vm_boot_order" {
  type    = list(string)
  default = null
}

variable "vm_cdrom_file_id" {
  type    = string
  default = "none"
}
variable "vm_cdrom_interface" {
  type    = string
  default = "ide0"
}

variable "vm_clone_datastore_id" {
  type    = string
  default = "local-lvm"
}
variable "vm_clone_node_name" {
  type    = string
  default = null
}
variable "vm_clone_retries" {
  type    = number
  default = null
}
variable "vm_clone_vm_id" {
  type    = number
  default = null
}
variable "vm_clone_full" {
  type    = bool
  default = true
}

variable "vm_cpu_architecture" {
  type    = string
  default = "x86_64"
}
variable "vm_cpu_cores" {
  type    = number
  default = 1
}
variable "vm_cpu_flags" {
  type    = list(string)
  default = null
}
variable "vm_cpu_hotplugged" {
  type    = number
  default = 0
}
variable "vm_cpu_limit" {
  type    = number
  default = 0
}
variable "vm_cpu_numa" {
  type    = bool
  default = false
}
variable "vm_cpu_sockets" {
  type    = number
  default = 1
}
variable "vm_cpu_type" {
  type    = string
  default = "qemu64"
}
variable "vm_cpu_units" {
  type    = number
  default = 100
}
variable "vm_cpu_affinity" {
  type    = string
  default = null
}

variable "vm_description" {
  type    = string
  default = null
}

variable "vm_disks" {
  type = map(object({
    aio               = optional(string, "io_uring")
    backup            = optional(bool, true)
    cache             = optional(string, "none")
    datastore_id      = optional(string, "local-lvm")
    path_in_datastore = optional(string, null)
    discard           = optional(string, "ignore")
    file_format       = optional(string, "raw")
    import_from       = optional(string, null)
    interface         = optional(string, null)
    iothread          = optional(bool, false)
    replicate         = optional(bool, false)
    serial            = optional(string, null)
    size              = optional(number, 8)
    speed = optional(object({
      iops_read            = optional(number, null)
      iops_read_burstable  = optional(number, null)
      iops_write           = optional(number, null)
      iops_write_burstable = optional(number, null)
      read                 = optional(number, null)
      read_burstable       = optional(number, null)
      write                = optional(number, null)
      write_burstable      = optional(number, null)
    }), null)
    ssd               = optional(bool, false)
  }))
  default = {}
}

variable "vm_efi_disk_datastore_id" {
  type    = string
  default = "local-lvm"
}
variable "vm_efi_disk_file_format" {
  type    = string
  default = "raw"
}
variable "vm_efi_disk_type" {
  type    = string
  default = "4m"
}
variable "vm_efi_disk_pre_enrolled_keys" {
  type    = bool
  default = false
}

variable "vm_tpm_state_datastore_id" {
  type    = string
  default = "local-lvm"
}
variable "vm_tpm_state_version" {
  type    = string
  default = "v2.0"
}

variable "vm_hostpci_device" {
  type    = string
  default = null
}
variable "vm_hostpci_id" {
  type    = string
  default = null
}
variable "vm_hostpci_mapping" {
  type    = string
  default = null
}
variable "vm_hostpci_mdev" {
  type    = string
  default = null
}
variable "vm_hostpci_pcie" {
  type    = string
  default = null
}
variable "vm_hostpci_rombar" {
  type    = bool
  default = true
}
variable "vm_hostpci_rom_file" {
  type    = string
  default = null
}
variable "vm_hostpci_xvga" {
  type    = string
  default = null
}

variable "vm_usb_host" {
  type    = string
  default = null
}
variable "vm_usb_mapping" {
  type    = string
  default = null
}
variable "vm_usb_usb" {
  type    = bool
  default = false
}

variable "vm_initialization_datastore_id" {
  type    = string
  default = "local-lvm"
}
variable "vm_initialization_interface" {
  type    = string
  default = "ide2"
}
variable "vm_initialization_dns_domain" {
  type    = string
  default = null
}
variable "vm_initialization_dns_servers" {
  type    = list(string)
  default = null
}
variable "vm_initialization_ip_config_ipv4_address" {
  type    = string
  default = null
}
variable "vm_initialization_ip_config_ipv4_gateway" {
  type    = string
  default = null
}
variable "vm_initialization_ip_config_ipv6_address" {
  type    = string
  default = null
}
variable "vm_initialization_ip_config_ipv6_gateway" {
  type    = string
  default = null
}
variable "vm_initialization_user_accoun_keys" {
  type    = list(string)
  default = null
}
variable "vm_initialization_user_accoun_password" {
  type      = string
  default   = null
  sensitive = true
}
variable "vm_initialization_user_accoun_username" {
  type    = string
  default = null
}

variable "vm_keyboard_layout" {
  type    = string
  default = "en-us"
}

variable "vm_kvm_arguments" {
  type    = string
  default = null
}

variable "vm_machine" {
  type    = string
  default = "pc"
}

variable "vm_memory_dedicated" {
  type    = number
  default = 512
}
variable "vm_memory_floating" {
  type    = number
  default = 0
}
variable "vm_memory_hugepages" {
  type    = string
  default = null
}
variable "vm_memory_keep_hugepages" {
  type    = bool
  default = false
}

variable "vm_numa_device" {
  type    = string
  default = null
}
variable "vm_numa_cpus" {
  type    = string
  default = null
}
variable "vm_numa_memory" {
  type    = number
  default = null
}
variable "vm_numa_hostnodes" {
  type    = string
  default = null
}
variable "vm_numa_policy" {
  type    = string
  default = "preferred"
}

variable "vm_migrate" {
  type    = bool
  default = false
}

variable "vm_name" {
  type    = string
  default = null
}

variable "vm_network_devices" {
  type = map(object({
    bridge       = optional(string, "vmbr0")
    disconnected = optional(bool, false)
    enabled      = optional(bool, true)
    firewall     = optional(bool, false)
    mac_address  = optional(string, null)
    model        = optional(string, "virtio")
    mtu          = optional(number, null)
    queues       = optional(number, null)
    rate_limit   = optional(number, null)
    vlan_id      = optional(number, null)
    trunks       = optional(string, null)
  }))
  default = {}
}

variable "vm_node_name" {
  type    = string
  default = null
}

variable "vm_on_boot" {
  type    = bool
  default = true
}

variable "vm_operating_system_type" {
  type    = string
  default = "other"
}

variable "vm_pool_id" {
  type    = string
  default = null
}

variable "vm_protection" {
  type    = bool
  default = false
}

variable "vm_reboot" {
  type    = bool
  default = false
}

variable "vm_reboot_after_update" {
  type    = bool
  default = true
}

 variable "vm_rng_source" {
   type    = string
   default = "/dev/urandom"
 }
 variable "vm_rng_max_bytes" {
   type    = number
   default = 1024
 }
 variable "vm_rng_period" {
   type    = number
   default = 1000
 }

variable "vm_serial_device_device" {
  type    = string
  default = "socket"
}

variable "vm_scsi_hardware" {
  type    = string
  default = "virtio-scsi-pci"
}

variable "vm_smbios_family" {
  type    = string
  default = null
}
variable "vm_smbios_manufacturer" {
  type    = string
  default = null
}
variable "vm_smbios_product" {
  type    = string
  default = null
}
variable "vm_smbios_serial" {
  type    = string
  default = null
}
variable "vm_smbios_sku" {
  type    = string
  default = null
}
variable "vm_smbios_uuid" {
  type    = string
  default = null
}
variable "vm_smbios_version" {
  type    = string
  default = null
}

variable "vm_started" {
  type    = bool
  default = true
}

variable "vm_startup_order" {
  type    = number
  default = null
}
variable "vm_startup_up_delay" {
  type    = number
  default = null
}
variable "vm_startup_down_delay" {
  type    = number
  default = null
}

variable "vm_tablet_device" {
  type    = bool
  default = true
}

variable "vm_tags" {
  type    = list(string)
  default = null
}

variable "vm_template" {
  type    = bool
  default = false
}

variable "vm_stop_on_destroy" {
  type    = bool
  default = false
}

variable "vm_timeout_clone" {
  type    = number
  default = 1800
}

variable "vm_timeout_create" {
  type    = number
  default = 1800
}

variable "vm_timeout_migrate" {
  type    = number
  default = 1800
}

variable "vm_timeout_reboot" {
  type    = number
  default = 1800
}

variable "vm_timeout_shutdown_vm" {
  type    = number
  default = 1800
}

variable "vm_timeout_start_vm" {
  type    = number
  default = 1800
}

variable "vm_timeout_stop_vm" {
  type    = number
  default = 300
}

variable "vm_vga_memory" {
  type    = number
  default = 16
}
variable "vm_vga_type" {
  type    = string
  default = "std"
}
variable "vm_vga_clipboard" {
  type    = string
  default = null
}

variable "vm_virtiofs_mapping" {
  type    = string
  default = null
}
variable "vm_virtiofs_cache" {
  type    = string
  default = null
}
variable "vm_virtiofs_direct_io" {
  type    = string
  default = null
}
variable "vm_virtiofs_expose_acl" {
  type    = string
  default = null
}
variable "vm_virtiofs_expose_xattr" {
  type    = string
  default = null
}

variable "vm_vm_id" {
  type    = number
  default = null
}

variable "vm_hook_script_file_id" {
  type    = string
  default = null
}


variable "vm_watchdog_enabled" {
  type    = bool
  default = false
}
variable "vm_watchdog_model" {
  type    = string
  default = "i6300esb"
}
variable "vm_watchdog_action" {
  type    = string
  default = "none"
}
