resource "yandex_compute_instance" "node01" {
  name                      = "node01"
  zone                      = "ru-central1-c"
  hostname                  = "node01.netology.cloud"
  allow_stopping_for_update = true
  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.centos-7-base}"
      name        = "root-node01"
      type        = "network-hdd"
      size        = "10"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.default.id}"
    nat       = true
  }

  metadata = {
    ssh-keys = "centos:${file("/Users/cerberus/.ssh/id_ed25519.pub")}"
  }
}
