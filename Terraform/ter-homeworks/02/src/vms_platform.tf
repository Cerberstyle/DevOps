
variable "vm_db_yc_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Yandex compute image family name"
}


variable "vm_db_yc_instance_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "Yandex compute instance platform ID"
}
# Закоменчено по заданию
/*variable "vm_db_yc_instance_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "Yandex compute instance name"
}*/

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "vpc_name_db" {
  type        = string
  default     = "db_develop"
  description = "VPC network & subnet name"
}