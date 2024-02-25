resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}

resource "yandex_vpc_network" "develop_db" {
  name = var.vpc_name_db
}

resource "yandex_vpc_subnet" "develop_sub" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}

resource "yandex_vpc_subnet" "develop_db_sub" {
  name           = var.vpc_name_db
  zone           = var.vm_db_zone
  network_id     = yandex_vpc_network.develop_db.id
  v4_cidr_blocks = var.default_cidr
}


data "yandex_compute_image" "ubuntu" {
  family = var.vm_web_yc_image_family
}

data "yandex_compute_image" "ubuntu_db" {
  family = var.vm_db_yc_image_family
}

resource "yandex_compute_instance" "platform" {
  zone = var.default_zone
  name        = local.name_web
  platform_id = var.vm_web_yc_instance_platform_id
  resources {
    cores         = var.vms_resources.web.cores
    memory        = var.vms_resources.web.memory
    core_fraction = var.vms_resources.web.core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop_sub.id
    nat       = true
  }

  metadata = var.metadata_vm

}


resource "yandex_compute_instance" "platform_db" {
  zone = var.vm_db_zone
  name        = local.name_db
  platform_id = var.vm_db_yc_instance_platform_id
  resources {
    cores         = var.vms_resources.db.cores
    memory        = var.vms_resources.db.memory
    core_fraction = var.vms_resources.db.core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu_db.image_id
    }
  }
  scheduling_policy {
    preemptible = true
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop_db_sub.id
    nat       = true
  }

  metadata = var.metadata_vm

}