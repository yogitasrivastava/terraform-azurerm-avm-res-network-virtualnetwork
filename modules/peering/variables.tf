variable "name" {
  type        = string
  description = "The name of the Azure Virtual Network Peering"
  nullable    = false
}

variable "remote_virtual_network" {
  type = object({
    resource_id = string
  })
  description = <<DESCRIPTION
  (Required) The Remote Virtual Network, which will be peered to and the optional reverse peering will be created in.

  - resource_id - The ID of the Virtual Network.
  DESCRIPTION
  nullable    = false
}

variable "virtual_network" {
  type = object({
    resource_id = string
  })
  description = <<DESCRIPTION
  (Required) The local Virtual Network, into which the peering will be created and that will be peered with the optional reverse peering.

  - resource_id - The ID of the Virtual Network.
  DESCRIPTION
  nullable    = false
}

variable "allow_forwarded_traffic" {
  type        = bool
  default     = false
  description = "Allow forwarded traffic between the virtual networks"
  nullable    = false
}

variable "allow_gateway_transit" {
  type        = bool
  default     = false
  description = "Allow gateway transit between the virtual networks"
  nullable    = false
}

variable "allow_virtual_network_access" {
  type        = bool
  default     = true
  description = "Allow access from the local virtual network to the remote virtual network"
  nullable    = false
}

variable "create_reverse_peering" {
  type        = bool
  default     = false
  description = "Create a reverse peering from the remote virtual network to the local virtual network"
  nullable    = false
}

variable "do_not_verify_remote_gateways" {
  type        = bool
  default     = false
  description = "Do not verify remote gateways for the virtual network peering"
  nullable    = false
}

variable "enable_only_ipv6_peering" {
  type        = bool
  default     = false
  description = "Enable only IPv6 peering for the virtual network peering"
  nullable    = false
}

variable "peer_complete_vnets" {
  type        = bool
  default     = true
  description = "Peer complete virtual networks for the virtual network peering"
  nullable    = false
}

variable "reverse_allow_forwarded_traffic" {
  type        = bool
  default     = false
  description = "Allow forwarded traffic for the reverse peering"
  nullable    = false
}

variable "reverse_allow_gateway_transit" {
  type        = bool
  default     = false
  description = "Allow gateway transit for the reverse peering"
  nullable    = false
}

variable "reverse_allow_virtual_network_access" {
  type        = bool
  default     = true
  description = "Allow access from the remote virtual network to the local virtual network for the reverse peering"
  nullable    = false
}

variable "reverse_do_not_verify_remote_gateways" {
  type        = bool
  default     = false
  description = "Do not verify remote gateways for the reverse peering"
  nullable    = false
}

variable "reverse_enable_only_ipv6_peering" {
  type        = bool
  default     = false
  description = "Enable only IPv6 peering for the reverse peering"
  nullable    = false
}

variable "reverse_name" {
  type        = string
  default     = null
  description = "The name of the reverse peering"
}

variable "reverse_peer_complete_vnets" {
  type        = bool
  default     = true
  description = "Peer complete virtual networks for the reverse peering"
  nullable    = false
}

variable "reverse_use_remote_gateways" {
  type        = bool
  default     = false
  description = "Use remote gateways for the reverse peering"
  nullable    = false
}

variable "subscription_id" {
  type        = string
  default     = null
  description = <<DESCRIPTION
  (Optional) The subscription ID to use for the feature registration.
DESCRIPTION
}

variable "use_remote_gateways" {
  type        = bool
  default     = false
  description = "Use remote gateways for the virtual network peering"
  nullable    = false
}
