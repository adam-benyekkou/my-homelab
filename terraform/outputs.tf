output "server_ip" {
  value       = hcloud_server.cavy-vps.ipv4_address
  description = "Server public IP"
}

output "server_status" {
  value       = hcloud_server.cavy-vps.status
  description = "Current server state"
}
