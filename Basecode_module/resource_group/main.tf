resource "azurerm_resource_group" "mrg" {
    for_each = var.msrg
    name = each.value.name 
    location = each.value.location 
}