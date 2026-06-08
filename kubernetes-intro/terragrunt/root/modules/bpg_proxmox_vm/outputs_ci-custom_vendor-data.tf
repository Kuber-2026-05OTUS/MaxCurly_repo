output "ci-custom_vendor-data_info" {
  value = {
    file_name    = proxmox_virtual_environment_file.ci-custom_vendor-data.file_name
    datastore_id = proxmox_virtual_environment_file.ci-custom_vendor-data.datastore_id
    content_type = proxmox_virtual_environment_file.ci-custom_vendor-data.content_type
    id           = proxmox_virtual_environment_file.ci-custom_vendor-data.id
  }
}
