include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../../../modules/bpg_proxmox_cloudimg"
}

locals {
  inputs_all_files = fileset("${get_terragrunt_dir()}", "inputs/*.hcl")
  inputs_all_values = [
    for file in local.inputs_all_files : read_terragrunt_config(file)
  ]
  merged_inputs = merge([
    for config in local.inputs_all_values : config.inputs
  ]...)
}

inputs = local.merged_inputs
