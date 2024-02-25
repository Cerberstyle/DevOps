terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.133"
}

provider "yandex" {
  zone = "ru-central1-c"
}

