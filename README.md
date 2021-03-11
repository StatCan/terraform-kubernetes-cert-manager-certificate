# Terraform Kubernetes Cert-Manager Certificate

## Introduction

This module allows for the deployment of a cert-manager certificate.

## Requirements

This module requires:

* cert-manager

## Security Controls

The following security controls can be met through configuration of this template:

* TBD

## Dependencies

* None

## Optional (depending on options configured):

* None

## Usage
Add the following code block to the desired Terraform namespace definition:
```terraform
module "certificate" {
  source = "git::https://gitlab.k8s.cloud.statcan.ca/cloudnative/terraform/modules/terraform-kubernetes-aad-pod-identity-template?ref=v1.1.0"

  depends_on = [
    module.namespace_default,
  ]

  ...
}
```

## Variables Values

TBD

## History

| Date     | Release | Change                                       |
| -------- | ------- | -------------------------------------------- |
| 20201022 | v1.0.0  | Initial release.                             |
