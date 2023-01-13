variable "name" {
  type        = string
  description = "the name for the Certificate custom resource"
}

variable "namespace" {
  type        = string
  description = "the namespace where the resources should be deployed"
}

variable "dns_names" {
  type        = list(string)
  description = "the dns hostnames for which to generate certificates for"
}

variable "issuer" {
  type = object({
    name = string
    kind = string
  })
  description = "the name and kind of the issuer to be used for issuing certificates for resources. Valid Kinds are: Issuer or ClusterIssuer"
}
variable "labels" {
  type        = map(string)
  default     = {}
  description = "the metadata labels to apply to created Certificate resources"
}
