resource "azurerm_container_registry" "acr" {
  name = "elabdevacr"
  resource_group_name = azurerm_resource_group.rg.name
  location = var.region
  sku = "Basic"
}