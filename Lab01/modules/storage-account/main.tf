resource "azurerm_resource_group" "infra" {
    name = "infra-control-rg"
    location = "centralus"
}

resource "azurerm_storage_account" "this-is-where-my-state-is" {
    name = "iacucreativa"
    resource_group_name = azurerm_resource_group.infra.name
    location = azurerm_resource_group.infra.location
    account_tier = "Standard"
    account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
    name = "tfstate"
    storage_account_name = azurerm_storage_account.this-is-where-my-state-is.name
}