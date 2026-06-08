resource "proxmox_virtual_environment_file" "ci-custom_vendor-data" {
  content_type = "snippets"
  datastore_id = var.ci-custom_vendor-data_datastore_id
  node_name    = var.vm_node_name

  source_raw {
    data = var.ci-custom_vendor-data_source_raw_data
    file_name = "ci-custom_vendor-data_${var.vm_name}.yaml"
  }
}
