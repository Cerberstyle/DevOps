output "instance_name" {
  description = "Instance Web name"
  value       = yandex_compute_instance.platform.name
}

output "external_ip" {
  description = "External Web IP address"
  value       = yandex_compute_instance.platform.network_interface[0].nat_ip_address
}

output "fqdn" {
  description = "fqdn for Web"
  value       = yandex_compute_instance.platform.fqdn
}

output "instance_name_db" {
  description = "Instance DB name"
  value       = yandex_compute_instance.platform_db.name
}

output "external_ip_db" {
  description = "External DB IP address"
  value       = yandex_compute_instance.platform_db.network_interface[0].nat_ip_address
}

output "fqdn_db" {
  description = "fqdn for DB"
  value       = yandex_compute_instance.platform_db.fqdn
}