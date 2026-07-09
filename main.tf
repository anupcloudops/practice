resource "azurerm_resource_group" "rgblock" {
    for_each = var.rgs
    name = each.value.name
    location = each.value.location
}
resource "azurerm_virtual_network" "vnet"{
    name = "vnet1"
    location = "central India"
    resource_group_name = "test_rg"
}
