resource "proxmox_virtual_environment_vm" "vm" {

  acpi = var.vm_acpi

  agent {
    enabled = var.vm_agent_enable
    timeout = var.vm_agent_timeout
    trim    = var.vm_agent_trim
    type    = var.vm_agent_type
  }

#  amd_sev {
#    type           = var.vm_amd_sev_type
#    allow_smt      = var.vm_amd_sev_allow_smt
#    kernel_hashes  = var.vm_amd_sev_kernel_hashes
#    no_debug       = var.vm_amd_sev_no_debug
#    no_key_sharing = var.vm_amd_sev_no_key_sharing
#  }

#  audio_device {
#     device  = var.vm_audio_device_device
#     driver  = var.vm_audio_device_driver
#     enabled = var.vm_audio_device_enabled
#   }

  bios = var.vm_bios

  boot_order = var.vm_boot_order

  cdrom {
    file_id   = var.vm_cdrom_file_id
    interface = var.vm_cdrom_interface
  }

#  clone {
#    datastore_id = var.vm_clone_datastore_id
#    node_name    = var.vm_clone_node_name
#    retries      = var.vm_clone_retries
#    vm_id        = var.vm_clone_vm_id
#    full         = var.vm_clone_full
#  }

  cpu {
#    architecture = var.vm_cpu_architecture
    cores        = var.vm_cpu_cores
    flags        = var.vm_cpu_flags
    hotplugged   = var.vm_cpu_hotplugged
    limit        = var.vm_cpu_limit
    numa         = var.vm_cpu_numa
    sockets      = var.vm_cpu_sockets
    type         = var.vm_cpu_type
    units        = var.vm_cpu_units
#    affinity     = var.vm_cpu_affinity
  }

  description = var.vm_description

  dynamic "disk" {
    for_each = var.vm_disks
    content {
      aio               = disk.value.aio
      backup            = disk.value.backup
      cache             = disk.value.cache
      datastore_id      = disk.value.datastore_id
      path_in_datastore = disk.value.path_in_datastore
      discard           = disk.value.discard
      file_format       = disk.value.file_format
      import_from       = disk.value.import_from
      interface         = disk.value.interface
      iothread          = disk.value.iothread
      replicate         = disk.value.replicate
      serial            = disk.value.serial
      size              = disk.value.size
      dynamic "speed" {
        for_each = disk.value.speed != null ? [1] : []
        content {
          iops_read            = try(disk.value.speed.iops_read, null)
          iops_read_burstable  = try(disk.value.speed.iops_read_burstable, null)
          iops_write           = try(disk.value.speed.iops_write, null)
          iops_write_burstable = try(disk.value.speed.iops_write_burstable, null)
          read                 = try(disk.value.speed.read, null)
          read_burstable       = try(disk.value.speed.read_burstable, null)
          write                = try(disk.value.speed.write, null)
          write_burstable      = try(disk.value.speed.write_burstable, null)
        }
      }
      ssd               = disk.value.ssd
    }
  }

  efi_disk {
    datastore_id      = var.vm_efi_disk_datastore_id
    file_format       = var.vm_efi_disk_file_format
    type              = var.vm_efi_disk_type
    pre_enrolled_keys = var.vm_efi_disk_pre_enrolled_keys
  }

#  tpm_state {
#    datastore_id = var.vm_tpm_state_datastore_id
#    version      = var.vm_tpm_state_version
#  }

#  hostpci {
#    device   = var.vm_hostpci_device
#    id       = var.vm_hostpci_id
#    mapping  = var.vm_hostpci_mapping
#    mdev     = var.vm_hostpci_mdev
#    pcie     = var.vm_hostpci_pcie
#    rombar   = var.vm_hostpci_rombar
#    rom_file = var.vm_hostpci_rom_file
#    xvga     = var.vm_hostpci_xvga
#  }

#  usb {
#    host    = var.vm_usb_host
#    mapping = var.vm_usb_mapping
#    usb3    = var.vm_usb_usb
#  }

  initialization {
    datastore_id = var.vm_initialization_datastore_id
    interface    = var.vm_initialization_interface
    dns {
      domain  = var.vm_initialization_dns_domain
      servers = var.vm_initialization_dns_servers
    }
    ip_config {
      ipv4 {
        address = var.vm_initialization_ip_config_ipv4_address
        gateway = var.vm_initialization_ip_config_ipv4_gateway
      }
#      ipv6 {
#        address = var.vm_initialization_ip_config_ipv6_address
#        gateway = var.vm_initialization_ip_config_ipv6_gateway
#      }
    }
    user_account {
      keys     = var.vm_initialization_user_accoun_keys
      password = var.vm_initialization_user_accoun_password
      username = var.vm_initialization_user_accoun_username
    }
#    network_data_file_id = proxmox_virtual_environment_file.ci-custom_network-data.id
#    user_data_file_id    = proxmox_virtual_environment_file.ci-custom_user-data.id
    vendor_data_file_id  = proxmox_virtual_environment_file.ci-custom_vendor-data.id
#    meta_data_file_id    = proxmox_virtual_environment_file.ci-custom_meta-data.id
  }

  keyboard_layout = var.vm_keyboard_layout

  kvm_arguments = var.vm_kvm_arguments

  machine = var.vm_machine

  memory {
    dedicated      = var.vm_memory_dedicated
    floating       = var.vm_memory_floating
#    hugepages      = var.vm_memory_hugepages
#    keep_hugepages = var.vm_memory_keep_hugepages
  }

#  numa {
#    device    = var.vm_numa_device
#    cpus      = var.vm_numa_cpus
#    memory    = var.vm_numa_memory
#    hostnodes = var.vm_numa_hostnodes
#    policy    = var.vm_numa_policy
#  }

  migrate = var.vm_migrate

  name = var.vm_name

  dynamic "network_device" {
    for_each = var.vm_network_devices
    content {
      bridge       = network_device.value.bridge
      disconnected = network_device.value.disconnected
      enabled      = network_device.value.enabled
      firewall     = network_device.value.firewall
      mac_address  = network_device.value.mac_address
      model        = network_device.value.model
      mtu          = network_device.value.mtu
      queues       = network_device.value.queues
      rate_limit   = network_device.value.rate_limit
      vlan_id      = network_device.value.vlan_id
      trunks       = network_device.value.trunks
    }
  }

  node_name = var.vm_node_name

  on_boot   = var.vm_on_boot

  operating_system {
    type = var.vm_operating_system_type
  }

  pool_id = var.vm_pool_id

  protection = var.vm_protection

  reboot = var.vm_reboot

  reboot_after_update = var.vm_reboot_after_update

  rng {
    source    = var.vm_rng_source
    max_bytes = var.vm_rng_max_bytes
    period    = var.vm_rng_period
  }

  serial_device {
    device = var.vm_serial_device_device
  }

  scsi_hardware = var.vm_scsi_hardware

  smbios {
    family       = var.vm_smbios_family
    manufacturer = var.vm_smbios_manufacturer
    product      = var.vm_smbios_product
    serial       = var.vm_smbios_serial
    sku          = var.vm_smbios_sku
#    uuid         = var.vm_smbios_uuid
    version      = var.vm_smbios_version
  }

  started = var.vm_started

  startup {
    order      = var.vm_startup_order
    up_delay   = var.vm_startup_up_delay
    down_delay = var.vm_startup_down_delay
  }

  tablet_device = var.vm_tablet_device

  tags = var.vm_tags

  template = var.vm_template

  stop_on_destroy = var.vm_stop_on_destroy

  timeout_clone = var.vm_timeout_clone

  timeout_create = var.vm_timeout_create

  timeout_migrate = var.vm_timeout_migrate

  timeout_reboot = var.vm_timeout_reboot

  timeout_shutdown_vm = var.vm_timeout_shutdown_vm

  timeout_start_vm = var.vm_timeout_start_vm

  timeout_stop_vm = var.vm_timeout_stop_vm

  vga {
    memory    = var.vm_vga_memory
    type      = var.vm_vga_type
    clipboard = var.vm_vga_clipboard
  }

#  virtiofs {
#    mapping      = var.vm_virtiofs_mapping
#    cache        = var.vm_virtiofs_cache
#    direct_io    = var.vm_virtiofs_direct_io
#    expose_acl   = var.vm_virtiofs_expose_acl
#    expose_xattr = var.vm_virtiofs_expose_xattr
#  }

  vm_id = var.vm_vm_id

  hook_script_file_id = var.vm_hook_script_file_id

  watchdog {
    enabled = var.vm_watchdog_enabled
    model   = var.vm_watchdog_model
    action  = var.vm_watchdog_action
  }

}
