resource "azurerm_resource_group" "resource_gp" {
  name     = "Terraform-Assignment"
  location = "eastus"

  tags = {
      Owner = "Alex"
  }
}

resource "azurerm_app_service_plan" "app_service_plan1" {
  name                = "assignment-appserviceplan"
  location            = azurerm_resource_group.resource_gp.location
  resource_group_name = azurerm_resource_group.resource_gp.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "webapp" {
  name                = "assignment-webapp"
  location            = azurerm_resource_group.resource_gp.location
  resource_group_name = azurerm_resource_group.resource_gp.name
  app_service_plan_id = azurerm_app_service_plan.app_service_plan1.id
  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }
}

