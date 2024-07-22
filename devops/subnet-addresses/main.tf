module "subnet_addresses" {
  source = "hashicorp/subnets/cidr"

  base_cidr_block = "172.16.0.0/16"
  networks = [
    {
      name     = "eu-central-1a-private"
      new_bits = 2
    },
    {
      name     = "eu-central-1a-public"
      new_bits = 8
    },
    {
      name     = "eu-central-1a-db"
      new_bits = 8
    },
    {
      name     = "eu-central-1b-private"
      new_bits = 2
    },
    {
      name     = "eu-central-1b-public"
      new_bits = 8
    },
    {
      name     = "eu-central-1b-db"
      new_bits = 8
    },
    {
      name     = "eu-central-1c-private"
      new_bits = 2
    },
    {
      name     = "eu-central-1c-public"
      new_bits = 8
    },
    {
      name     = "eu-central-1c-db"
      new_bits = 8
    },
  ]
}