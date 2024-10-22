data "azurerm_network_interface" "data_nic" {
  for_each =var.dnic
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}