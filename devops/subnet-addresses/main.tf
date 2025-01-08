module "subnet_addresses" {
  source = "hashicorp/subnets/cidr"

  base_cidr_block = var.cidr_block
  networks = [
    {
      name     = "1a-public"
      new_bits = 8
    },
    {
      name     = "1a-db"
      new_bits = 8
    },
    {
      name     = "1b-public"
      new_bits = 8
    },
    {
      name     = "1b-db"
      new_bits = 8
    },
    {
      name     = "1c-public"
      new_bits = 8
    },
    {
      name     = "1c-db"
      new_bits = 8
    },
    {
      name     = "1a-private"
      new_bits = 2
    },
    {
      name     = "1b-private"
      new_bits = 2
    },
    {
      name     = "1c-private"
      new_bits = 2
    },
  ]
}
