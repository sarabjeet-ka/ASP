variable "app_service_plan_variables" {
  type = map(object({
    app_service_plan_name                         = string
    app_service_plan_location                     = string
    app_service_plan_kind                         = string
    app_service_plan_resource_group_name          = string
    app_service_plan_reserved                     = bool
    app_service_plan_per_site_scaling             = bool
    app_service_plan_is_xenon                     = bool
    app_service_environment_id                 = string
    app_service_plan_maximum_elastic_worker_count = number
    app_service_plan_zone_redundant               = bool
    sku = object({
      sku_tier     = string
      sku_size     = string
      sku_capacity = number
    })
  }))
}
