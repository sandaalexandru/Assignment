output "resource_group" {
  value = azurerm_resource_group.resource_gp.name
}

output "azurerm_app_service_plan" {
  value = azurerm_app_service_plan.app_service_plan1.name
 
}

output "azurerm_app_service" {
  value = azurerm_app_service.webapp.name
 
}