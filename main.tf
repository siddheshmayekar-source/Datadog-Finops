data "azurerm_resource_group" "sub1" {
  for_each = var.subscriptions["sub1"].resource_groups
  name     = each.key
  provider = azurerm.sub1
}

resource "azapi_update_resource" "sub1_update" {
  for_each = data.azurerm_resource_group.sub1

  type        = "Microsoft.Resources/resourceGroups@2021-04-01"
  resource_id = each.value.id

  body = jsonencode({
    tags = merge(
      coalesce(each.value.tags, {}),
      var.subscriptions["sub1"].resource_groups[each.key].required_tags
    )
  })
}
