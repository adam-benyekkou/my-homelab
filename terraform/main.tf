resource "hcloud_ssh_key" "cavy_key" {
  name       = "cavy-ssh-key"
  public_key = file("~/.ssh/id_ed25519.pub")
}

# The Server definition
resource "hcloud_server" "cavy-vps" {
  name        = "cavy-vps"
  image       = "debian-12"
  server_type = var.server_type
  location    = var.location
  ssh_keys    = [hcloud_ssh_key.cavy_key.id]

  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
}
