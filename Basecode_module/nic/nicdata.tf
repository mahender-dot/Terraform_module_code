data "azurerm_subnet" "data_sub" {
  for_each = var.datas
  name                 = each.value.name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_public_ip" "data_ip" {
  for_each = var.dpip
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}