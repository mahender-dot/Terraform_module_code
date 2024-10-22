resource "azurerm_network_interface" "msnic" {
for_each = var.msnic
name = each.value.name 
location = each.value.location
resource_group_name = each.value.resource_group_name

ip_configuration {
    name = "krishna"
    subnet_id = data.azurerm_subnet.data_sub[each.value.subnet].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = data.azurerm_public_ip.data_ip[each.value.public_ip].id
}
}
