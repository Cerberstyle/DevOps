vms_resources = {
  web = {
    cores         = 2,
    memory        = 1,
    core_fraction = 5
  }
  db = {
    cores         = 2,
    memory        = 2,
    core_fraction = 20
  }
}

metadata_vm = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOv4wEBDFleK8Tovn/W7T32ten8Jbn2MeYswUGyQyolg cerberus@Mac-mini-ILYA.local"
}

lern        = "netology"
env         = "develop"
project     = "platform"
role_web    = "web"
role_db     = "db"

