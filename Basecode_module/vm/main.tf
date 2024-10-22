resource "azurerm_linux_virtual_machine" "msvm" {
    for_each =var.msvm
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    size = each.value.size
    admin_username = each.value.admin_username
    admin_password = each.value.admin_password
    disable_password_authentication = each.value.disable_password_authentication
    network_interface_ids = [data.azurerm_network_interface.data_nic[each.value.nic].id]

os_disk {
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
}
source_image_reference {
      publisher = "Canonical"
      offer = "0001-com-ubuntu-server-jammy"
      sku = "22_04-lts"
      version = "latest"
}
}