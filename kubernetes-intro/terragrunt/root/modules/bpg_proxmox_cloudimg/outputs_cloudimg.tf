output "cloudimg_info" {
  value = {
    file_name    = proxmox_virtual_environment_download_file.cloudimg.file_name
    datastore_id = proxmox_virtual_environment_download_file.cloudimg.datastore_id
  }
}
