resource "azurerm_app_service_plan" "asp" {
  for_each                     = var.app_service_plan_variables
  name                         = each.value.app_service_plan_name
  location                     = each.value.app_service_plan_location
  kind=each.value.app_service_plan_kind
  resource_group_name          = each.value.app_service_plan_resource_group_name
  reserved=each.value.app_service_plan_reserved
  per_site_scaling=each.value.app_service_plan_per_site_scaling
  is_xenon=each.value.app_service_plan_is_xenon
  app_service_environment_id   = each.value.app_service_environment_id
  maximum_elastic_worker_count = each.value.app_service_plan_maximum_elastic_worker_count
  zone_redundant=each.value.app_service_plan_zone_redundant
  sku {
tier=each.value.sku.sku_tier
size=each.value.sku.sku_size
capacity=each.value.sku.sku_capacity
  }
}