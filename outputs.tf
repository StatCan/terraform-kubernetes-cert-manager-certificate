output "name" {
  description = "the name of the cert-manager Certificate resource"
  value       = var.name
}

output "secret_name" {
  description = "the name of the secret to contain generated TLS certificates"
  value       = "${var.name}-tls"
}

output "namespace" {
  value       = var.namespace
  description = "the namespace in which the certificate resides"
}
