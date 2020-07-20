resource "azurerm_api_management_api_operation_policy" "op_policy" {
  api_name            = var.api_name
  api_management_name = var.apim_name
  resource_group_name = var.resource_group_name
  operation_id        = azurerm_api_management_api_operation.op.operation_id

  xml_content = <<XML
<policies>
  <inbound>
    <base />
  </inbound>
</policies>
XML
}