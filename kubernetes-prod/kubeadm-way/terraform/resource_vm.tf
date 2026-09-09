resource "yandex_compute_instance" "k8s-master-01" {
  boot_disk {
    initialize_params {
      type       = "network-hdd"
      size       = 20
      block_size = 4096
      image_id   = "fd849rcpqs7mf5d38vg5"
    }
    auto_delete = true
  }
  folder_id          = "your_folder_id"
  hostname           = "k8s-master-01"
  maintenance_policy = "unspecified"
  metadata = {
    user-data               = "your_user-data"
    ssh-keys                = "your_ssh-keys"
    private_ui_created_from = "console"
  }
  name = "k8s-master-01"
  network_interface {
    subnet_id  = "your_subnet_id"
    index      = 0
    ip_address = "10.128.0.101"
    nat        = true
  }
  platform_id = "standard-v3"
  resources {
    memory        = 4
    cores         = 2
    core_fraction = 20
  }
  scheduling_policy {
    preemptible = true
  }
  zone = "your_zone"
}

resource "yandex_compute_instance" "k8s-worker-01" {
  boot_disk {
    initialize_params {
      type       = "network-hdd"
      size       = 20
      block_size = 4096
      image_id   = "fd849rcpqs7mf5d38vg5"
    }
    auto_delete = true
  }
  folder_id          = "your_folder_id"
  hostname           = "k8s-worker-01"
  maintenance_policy = "unspecified"
  metadata = {
    user-data               = "your_user-data"
    ssh-keys                = "your_ssh-keys"
    private_ui_created_from = "console"
  }
  name = "k8s-worker-01"
  network_interface {
    subnet_id  = "your_subnet_id"
    index      = 0
    ip_address = "10.128.0.111"
    nat        = true
  }
  platform_id = "standard-v3"
  resources {
    memory        = 4
    cores         = 2
    core_fraction = 20
  }
  scheduling_policy {
    preemptible = true
  }
  zone = "your_zone"
}

resource "yandex_compute_instance" "k8s-worker-02" {
  boot_disk {
    initialize_params {
      type       = "network-hdd"
      size       = 20
      block_size = 4096
      image_id   = "fd849rcpqs7mf5d38vg5"
    }
    auto_delete = true
  }
  folder_id          = "your_folder_id"
  hostname           = "k8s-worker-02"
  maintenance_policy = "unspecified"
  metadata = {
    user-data               = "your_user-data"
    ssh-keys                = "your_ssh-keys"
    private_ui_created_from = "console"
  }
  name = "k8s-worker-02"
  network_interface {
    subnet_id  = "your_subnet_id"
    index      = 0
    ip_address = "10.128.0.112"
    nat        = true
  }
  platform_id = "standard-v3"
  resources {
    memory        = 4
    cores         = 2
    core_fraction = 20
  }
  scheduling_policy {
    preemptible = true
  }
  zone = "your_zone"
}

resource "yandex_compute_instance" "k8s-worker-03" {
  boot_disk {
    initialize_params {
      type       = "network-hdd"
      size       = 20
      block_size = 4096
      image_id   = "fd849rcpqs7mf5d38vg5"
    }
    auto_delete = true
  }
  folder_id          = "your_folder_id"
  hostname           = "k8s-worker-03"
  maintenance_policy = "unspecified"
  metadata = {
    user-data               = "your_user-data"
    ssh-keys                = "your_ssh-keys"
    private_ui_created_from = "console"
  }
  name = "k8s-worker-03"
  network_interface {
    subnet_id  = "your_subnet_id"
    index      = 0
    ip_address = "10.128.0.113"
    nat        = true
  }
  platform_id = "standard-v3"
  resources {
    memory        = 4
    cores         = 2
    core_fraction = 20
  }
  scheduling_policy {
    preemptible = true
  }
  zone = "your_zone"
}
