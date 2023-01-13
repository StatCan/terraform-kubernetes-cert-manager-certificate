# Terraform Kubernetes Cert-Manager Certificate

## Introduction

This module allows for the deployment of a cert-manager certificate.

## Required Modules

* `Certificate` CRD from `cert-manager.io/v1`

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_names"></a> [dns\_names](#input\_dns\_names) | the dns hostnames for which to generate certificates for | `list(string)` | n/a | yes |
| <a name="input_issuer"></a> [issuer](#input\_issuer) | the name and kind of the issuer to be used for issuing certificates for resources. Valid Kinds are: Issuer or ClusterIssuer | <pre>object({<br>    name = string<br>    kind = string<br>  })</pre> | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | the name for the Certificate custom resource | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | the namespace where the resources should be deployed | `string` | n/a | yes |
| <a name="input_labels"></a> [labels](#input\_labels) | the metadata labels to apply to created Certificate resources | `map(string)` | `{}` | no |

## Usage

```terraform
module "certificate" {
  source = "git::https://gitlab.k8s.cloud.statcan.ca/cloudnative/terraform/modules/terraform-kubernetes-cert-manager-certificate.git?ref=v1.1.0"

  name = var.name
  namespace = "cert-manager-system"

  dns_names = [
    abc.example.com,
    efg.example.com,
  ]

  issuer = {
    name = var.cluster_issuer_name
    kind = var.cluster_issuer_kind
  }

  ...
}

```

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | the name of the cert-manager Certificate resource |
| <a name="output_namespace"></a> [namespace](#output\_namespace) | the namespace the identity resides in |
| <a name="output_secret_name"></a> [secret\_name](#output\_secret\_name) | the name of the secret to contain generated TLS certificates |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## History

| Date     | Release | Change                                       |
| -------- | ------- | -------------------------------------------- |
| 20201022 | v1.0.0  | Initial release.                             |
| 20231101 | v1.1.0  | Clean up vars and outputs and introduce full tf docs. |
