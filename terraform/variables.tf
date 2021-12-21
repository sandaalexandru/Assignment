provider "azurerm" {
  features{}
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  tenant_id       = "${var.tenant_id}"
}

variable "subscription_id" {
    description = "Enter Subscription ID"
    default = "dbe857d8-f7ea-4c79-bb59-b4e5bc080426"
}

variable "client_id" {
    description = "Enter Client ID"
    default = "f84e6eb2-23ca-4e10-9cab-6fbb719ceb6b"
}

variable "client_secret" {
    description = "Enter Client Secret"
    default = "JemNYaVD5vYL.jUUgb4ADFrT.jJ~Qz9YTe"
}

variable "tenant_id" {
    description = "Enter Tenant ID"
    default = "0b3fc178-b730-4e8b-9843-e81259237b77"
}

variable "prefix" {
  default = "td"
}