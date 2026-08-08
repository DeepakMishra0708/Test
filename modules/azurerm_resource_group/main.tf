resource "azurerm_resource_group" "rg" {
    # name="rg-1"
    # location="eastus"

    for_each = var.rgs
    name=each.value.name
    location=each.value.location
  
}