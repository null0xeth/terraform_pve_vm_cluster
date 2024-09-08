<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.64.0 |
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | >=0.62.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_servers"></a> [servers](#module\_servers) | ../../base/proxmox_virtual_machine | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auth_bundle"></a> [auth\_bundle](#input\_auth\_bundle) | n/a | `any` | n/a | yes |
| <a name="input_cloud_init_id"></a> [cloud\_init\_id](#input\_cloud\_init\_id) | n/a | `any` | n/a | yes |
| <a name="input_cluster_spec"></a> [cluster\_spec](#input\_cluster\_spec) | n/a | `any` | n/a | yes |
| <a name="input_provider_aws"></a> [provider\_aws](#input\_provider\_aws) | n/a | `any` | n/a | yes |
| <a name="input_provider_proxmox"></a> [provider\_proxmox](#input\_provider\_proxmox) | n/a | `any` | n/a | yes |
| <a name="input_resource_tags"></a> [resource\_tags](#input\_resource\_tags) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_raw_map"></a> [raw\_map](#output\_raw\_map) | n/a |
| <a name="output_server_ipv4"></a> [server\_ipv4](#output\_server\_ipv4) | n/a |
| <a name="output_server_name"></a> [server\_name](#output\_server\_name) | n/a |
<!-- END_TF_DOCS -->