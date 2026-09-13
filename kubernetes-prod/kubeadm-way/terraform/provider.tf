terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  cloud_id                 = "your_cloud_id"
  folder_id                = "your_folder_id"
  zone                     = "your_zone"
  service_account_key_file = "your_key_file"
}
