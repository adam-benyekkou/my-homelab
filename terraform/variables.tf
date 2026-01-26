variable "hcloud_token" {
  type      = string
  sensitive = true
}

variable "location" {
  default = "nbg1"
}

variable "server_type" {
  default = "cx32"
}
