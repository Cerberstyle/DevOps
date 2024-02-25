###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "vm_web_yc_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Yandex compute image family name"
}

# Закоменчено по заданию
/*variable "vm_web_yc_instance_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Yandex compute instance name"
}*/

variable "vm_web_yc_instance_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "Yandex compute instance platform ID"
}


###for local vars
variable "lern" {
  type        = string
}

variable "env" {
  type        = string
}

variable "project" {
  type        = string
}

variable "role_web" {
  type        = string
}

variable "role_db" {
  type        = string
}


###ssh vars

# Закоменчено по заданию
/*variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOv4wEBDFleK8Tovn/W7T32ten8Jbn2MeYswUGyQyolg cerberus@Mac-mini-ILYA.local"
  description = "ssh-keygen -t ed25519"
}*/

###map vars
variable "vms_resources" {
  type = map(any)
}

variable "metadata_vm" {
  type = map(any)
}