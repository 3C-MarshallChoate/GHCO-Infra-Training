locals {
  name_prefix = lower(replace(var.name, "_", "-"))

  common_tags = merge(
    {
      ManagedBy = "Terraform"
      Module    = "network"
    },
    var.tags
  )
}
