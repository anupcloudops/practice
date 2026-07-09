resource "azurerm_resource_group" "rgblock" {
    for_each = var.rgs
    name = each.value.name
    location = each.value.location
}
resource "azurerm_virtual_network" "vnet"{
    name = "vnet1"
    location = "central India"
    resource_group_name = azurerm_resource_group.rgblock["rg1"].name
}

resource "azurerm_resource_group" "canada" {
    name = "canada"
    location = "canada central"
    }
resource "azurerm_resource_group" "centralindia1" {
    name = "centralindia_rg"
    location = "centralindia"
}

resource "azurerm_resource_group" "india" {
    name = "raj_rg"
    location = "centralindia"
    }

    resource "azurerm_resource_group" "europe" {
    name = "raj"
    location = "west europe"
    }
