/*resource "azurerm_resource_group" "RG" {
    for_each = {
        dev = "East US"
        test = "West US"
        prod = "North Europe"
    }
  name = "rg-${each.key}"
  location = each.value
}*/

/*resource "azurerm_resource_group" "RG" {
  for_each = {
    for rg in var.RG : rg.name => rg
  }
  name     = each.value.name
  location = each.value.location

}*/

resource "azurerm_resource_group" "Resgrp" {
  count    = length(var.RGname)
  name = var.RGname[count.index]
  #name     = "rg-${count.index}"
  location = var.location

}