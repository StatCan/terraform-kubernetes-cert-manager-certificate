variable "name" {

}

variable "namespace" {
  description = "The namespace where the resources should be deployed."
}

variable "dns_names" {
  type = list(string)
}

variable "issuer" {
  type = object({
    name = string
    kind = string
  })
}
variable "labels" {
  type    = map(string)
  default = {}
}
