variable "cloudimg_content_type" {
  type = string
  default = "import"
}

variable "cloudimg_datastore_id" {
  type = string
  default = "local-lvm"
}

variable "cloudimg_file_name" {
  type = string
  default = null
}

variable "cloudimg_node_name" {
  type = string
  default = "pve"
}

variable "cloudimg_url" {
  type = string
  default = null
}

variable "cloudimg_checksum" {
  type = string
  default = null
}

variable "cloudimg_checksum_algorithm" {
  type = string
  default = null
}
