output "cidr_blocks" {
  description = "IP address blocks for each AZ of certain region"
  value = module.subnet_addresses.network_cidr_blocks
}