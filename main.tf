module "servers" {
  for_each         = var.cluster_spec
  source           = "../../base/proxmox_virtual_machine"
  auth_bundle      = var.auth_bundle
  resource_tags    = var.resource_tags
  provider_aws     = var.provider_aws
  provider_proxmox = var.provider_proxmox
  cluster_spec     = each.value
  cloud_init_id    = var.cloud_init_id

  providers = {
    aws     = aws
    proxmox = proxmox
  }
}


