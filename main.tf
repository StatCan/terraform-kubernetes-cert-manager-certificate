resource "helm_release" "certficate" {
  chart     = "${path.module}/certificate"
  name      = "certificate-${var.name}"
  namespace = var.namespace

  values = [<<EOF
name: "${var.name}"
secretName: "${var.name}-tls"
dnsNames: ${jsonencode(var.dns_names)}
issuer:
  name: "${var.issuer.name}"
  kind: "${var.issuer.kind}"
labels: ${jsonencode(var.labels)}
EOF
  ]
}
