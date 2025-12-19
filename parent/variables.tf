variable "resource_group_name" {
  type    = string
  default = "neelansh"
}

variable "location" {
  type    = string
  default = "East US"
}

variable "vnet_name" {
  type    = string
  default = "vm-vnet"
}

variable "address_space" {
  type    = list(string)
  default = ["10.0.0.0/26"]
}

variable "subnet_name" {
  type    = string
  default = "subnet-01"
}

variable "subnet_prefix" {
  type    = string
  default = "10.0.0.0/27"
}

variable "nic_name" {
  type    = string
  default = "vm-nic-01"
}

variable "storage_account_name" {
  type    = string
  default = "neelanshstorgae"
}

variable "storage_account_tier" {
  type    = string
  default = "Standard"
}

variable "storage_account_replication" {
  type    = string
  default = "LRS"
}

variable "vm_name" {
  type    = string
  default = "demo-vm"
}

variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}

variable "admin_username" {
  type    = string
  default = "Neelansh"
}
variable "admin_password" {
  type    = string
  default = "Neelansh@1234"
}
variable "image_publisher" {
  type    = string
  default = "Canonical"
}
variable "image_offer" {
  type    = string
  default = "UbuntuServer"
}
