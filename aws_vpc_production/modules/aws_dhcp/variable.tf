variable "domain_name" {
  type = string
}
variable "domain_name_servers" {
  type = list(any)
}
variable "ntp_servers" {
  type = list(any)
}
variable "netbios_name_servers" {
  type = list(any)
}
variable "tags" {
  type = list(any)
}