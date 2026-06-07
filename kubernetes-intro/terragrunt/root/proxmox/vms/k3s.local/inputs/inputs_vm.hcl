inputs = {

  vm_apci = true

  vm_agent_enable  = true
  vm_agent_timeout = "15m"
  vm_agent_trim    = false
  vm_agent_type    = "virtio"

#  vm_amd_sev_type           = "not used"
#  vm_amd_sev_allow_smt      = "not used"
#  vm_amd_sev_kernel_hashes  = "not used"
#  vm_amd_sev_no_debug       = "not used"
#  vm_amd_sev_no_key_sharing = "not used"

#  vm_audio_device_device  = "not used"
#  vm_audio_device_driver  = "not used"
#  vm_audio_device_enabled = "not used"

  vm_bios = "ovmf"

  vm_boot_order = ["scsi0"]

  vm_cdrom_file_id   = "none"
  vm_cdrom_interface = "ide0"

#  vm_clone_datastore_id = "not used"
#  vm_clone_node_name    = "not used"
#  vm_clone_retries      = "not used"
#  vm_clone_vm_id        = "not used"
#  vm_clone_full         = "not used"

#  vm_cpu_architecture = "not used"
  vm_cpu_cores        = "2"
  vm_cpu_flags        = null
  vm_cpu_hotplugged   = "0"
  vm_cpu_limit        = "0"
  vm_cpu_numa         = true
  vm_cpu_sockets      = "1"
  vm_cpu_type         = "host"
  vm_cpu_units        = "100"
#  vm_cpu_affinity     = "not used"

  vm_description = <<-EOF
                   k3s homework kuber-2026-05 server
  
                   MANAGED BY TERRAGRUNT, DO NOT CHANGED MANUALLY!
                   EOF

  vm_disks = {
    disk_0 = {
      aio               = "io_uring"
      backup            = true
      cache             = "none"
      datastore_id      = "local-zpool"
      path_in_datastore = null
      discard           = "ignore"
      file_format       = "raw"
      import_from       = "local-zfs:import/ubuntu_22.04_jammy_server_cloudimg_amd64_20260228.qcow2"
      interface         = "scsi0"
      iothread          = true
      replicate         = true
      serial            = null
      size              = 50
#      speed = { 
#        iops_read            = null
#        iops_read_burstable  = null
#        iops_write           = null
#        iops_write_burstable = null
#        read                 = null
#        read_burstable       = null
#        write                = null
#        write_burstable      = null
#      }
      ssd             = true
    }
  }

  vm_efi_disk_datastore_id      = "local-zpool"
  vm_efi_disk_file_format       = "raw"
  vm_efi_disk_type              = "4m"
  vm_efi_disk_pre_enrolled_keys = true

#  vm_tpm_state_datastore_id = "not used"
#  vm_tpm_state_version      = "not used"

#  vm_hostpci_device   = "not used"
#  vm_hostpci_id       = "not used"
#  vm_hostpci_mapping  = "not used"
#  vm_hostpci_mdev     = "not used"
#  vm_hostpci_pcie     = "not used"
#  vm_hostpci_rombar   = "not used"
#  vm_hostpci_rom_file = "not used"
#  vm_hostpci_xvga     = "not used"

#  vm_usb_host    = "not used"
#  vm_usb_mapping = "not used"
#  vm_usb_usb     = "not used"

  vm_initialization_datastore_id           = "local-zpool"
  vm_initialization_interface              = "ide2"
  vm_initialization_dns_domain             = "local"
  vm_initialization_dns_servers            = ["10.10.5.254"]
  vm_initialization_ip_config_ipv4_address = "10.10.5.100/24"
  vm_initialization_ip_config_ipv4_gateway = "10.10.5.254"
#  vm_initialization_ip_config_ipv6_address = "not used"
#  vm_initialization_ip_config_ipv6_gateway = "not used"
  vm_initialization_user_accoun_keys       = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKm3xULxEx5CwLmbTJOrmx61on2gA9d918qfAVpFOrXj mkudryashov_ssh_public_key"]
  vm_initialization_user_accoun_password   = null
  vm_initialization_user_accoun_username   = "mkudryashov"

  vm_keyboard_layout = "en-us"

  vm_kvm_arguments = null

  vm_machine = "q35,viommu=virtio"

  vm_memory_dedicated      = "8192"
  vm_memory_floating       = "8192"
#  vm_memory_hugepages      = "not used"
#  vm_memory_keep_hugepages = "not used"

#  vm_numa_device    = "not used"
#  vm_numa_cpus      = "not used"
#  vm_numa_memory    = "not used"
#  vm_numa_hostnodes = "not used"
#  vm_numa_policy    = "not used"

  vm_migrate = false

  vm_name = "k3s.local"

  vm_network_devices = {
    network_device_0 = {
      bridge       = "vmbr0"
      disconnected = false
      enabled      = true
      firewall     = true
      mac_address  = null
      model        = "virtio"
      mtu          = "1"
      queues       = null
      rate_limit   = null
      vlan_id      = "1005"
      trunks       = null
    }
  }

  vm_node_name = "pve"

  vm_on_boot = true

  vm_operating_system_type = "l26"

  vm_pool_id = "kuber-2026-05_homework"

  vm_protection = true

  vm_reboot = false

  vm_reboot_after_update = false

  vm_rng_source    = "/dev/urandom"
  vm_rng_max_bytes = "1024"
  vm_rng_period    = "1000"

  vm_serial_device_device = "socket"

  vm_scsi_hardware = "virtio-scsi-single"

  vm_smbios_family       = null
  vm_smbios_manufacturer = null
  vm_smbios_product      = null
  vm_smbios_serial       = null
  vm_smbios_sku          = null
#  vm_smbios_uuid         = "not used"
  vm_smbios_version      = null

  vm_started = true

  vm_startup_order      = "0"
  vm_startup_up_delay   = "0"
  vm_startup_down_delay = "0"

  vm_tablet_device = true

  vm_tags = ["linux","ubuntu","terragrunt","cloud-init"]

  vm_template = false

  vm_stop_on_destroy = false

  vm_timeout_clone = 1800

  vm_timeout_create = 1800

  vm_timeout_migrate = 1800

  vm_timeout_reboot = 1800

  vm_timeout_shutdown_vm = 1800

  vm_timeout_start_vm = 1800

  vm_timeout_stop_vm = 300

  vm_vga_memory    = "16"
  vm_vga_type      = "virtio"
  vm_vga_clipboard = null

#  vm_virtiofs_mapping      = "not used"
#  vm_virtiofs_cache        = "not used"
#  vm_virtiofs_direct_io    = "not used"
#  vm_virtiofs_expose_acl   = "not used"
#  vm_virtiofs_expose_xattr = "not used"

  vm_vm_id = "5100"

  vm_hook_script_file_id = null

  vm_watchdog_enabled = true
  vm_watchdog_model  = "i6300esb" 
  vm_watchdog_action = "reset"

}
