resource "azurerm_virtual_network" "vnet" {
  name = "${var.project_name}-vnet"
  location = var.region
  resource_group_name = azurerm_resource_group.rg.name
  address_space = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "aks" {
  name = "${var.project_name}-aks-subnet"
  resource_group_name = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes = ["10.0.1.0/24"]
}   

resource "azurerm_subnet" "gen_subnet" {
  name = "${var.project_name}-gen-subnet"
  resource_group_name = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes = ["10.0.2.0/24"]
} 