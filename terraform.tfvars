app_service_plan_variables = {
  plan1 = {
    app_service_plan_name                         = "sarab-asp"
    app_service_plan_location                     = "East Asia"
    app_service_plan_kind                         = "Linux"
    app_service_plan_resource_group_name          = "sarab-rg"
    app_service_plan_per_site_scaling             = false
    app_service_plan_is_xenon                     = false
    app_service_environment_id                    = null
    app_service_plan_maximum_elastic_worker_count = 2
    app_service_plan_zone_redundant               = false
    sku = {
      sku_tier     = "Free"
      sku_size     = "F1"
      sku_capacity = 1
    }
  }
}
