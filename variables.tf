variable "vnet_resource_group" {
  type = string
  description = "Provide vnet rg"

}

variable "vnet_name" {
 type=string
 description = "virtual network name"
}

variable "vnet_address_space" {
  
  type=list(string)
  description = "list of vnet address spaces"
}

variable "dns_servers" {
  type=list(string)
  description = "list of dns servers"
}

variable "subnet_details" {
  type=map(object({
    name = string
    address_prefixes = list(string)
    nsg_name = string
    nsg_rules = list(object({
        name = string
        properties = map(any)
    }))
  }))
}
