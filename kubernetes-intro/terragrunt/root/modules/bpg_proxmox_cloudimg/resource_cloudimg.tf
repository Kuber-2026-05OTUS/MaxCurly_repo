resource "proxmox_virtual_environment_download_file" "cloudimg" {
  content_type       = var.cloudimg_content_type
  datastore_id       = var.cloudimg_datastore_id
  file_name          = var.cloudimg_file_name
  node_name          = var.cloudimg_node_name
  url                = var.cloudimg_url
  checksum           = var.cloudimg_checksum
  checksum_algorithm = var.cloudimg_checksum_algorithm
}
