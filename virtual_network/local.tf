locals {
  rtgw_name = "PRD-RT-GatewaySubnet"

  location = var.location == null ? var.global.location : var.location
  loc      = var.loc == null ? var.global.loc : var.loc
  envir    = var.envir == null ? var.global.envir : var.envir
  tempname = var.name == null ? var.global.project : var.name

  slug = "VNET"

  vnet_name = var.is_hub ? local.tempname : upper("${local.envir}-${local.slug}-${local.tempname}-${local.loc}")

  tags = merge(var.global.tags, var.tags, { "MODULE_VERSION" = local.module_version })
}