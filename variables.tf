variable "LINUX_PASSWORD" {
  type      = string
  sensitive = true
}

output "ip-publica" {
  value = module.linux-server.ip-publica
}