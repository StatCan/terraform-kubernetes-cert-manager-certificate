output "name" {
  value = var.name
}

output "secret_name" {
  value = "${var.name}-tls"
}

output "namespace" {
  value       = var.namespace
  description = "The namespace the identity resides."
}
