# NLB

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.5 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | ~> 0.84.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | 0.84.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_lb_network_load_balancer.morsh_nlb](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/lb_network_load_balancer) | resource |
| [yandex_lb_target_group.morsh_nlb_target_group](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/lb_target_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | n/a | `string` | `"b1gm80drf2f2dk70jc3f"` | no |
| <a name="input_creation_zone_yandex"></a> [creation\_zone\_yandex](#input\_creation\_zone\_yandex) | Name of zone were located resources. Mandatory | `string` | n/a | yes |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | n/a | `string` | `"b1g16ac5if9cnssnhfip"` | no |
| <a name="input_instance_a_ipv4_internal"></a> [instance\_a\_ipv4\_internal](#input\_instance\_a\_ipv4\_internal) | Ipv4 address of instance a | `string` | n/a | yes |
| <a name="input_instance_b_ipv4_internal"></a> [instance\_b\_ipv4\_internal](#input\_instance\_b\_ipv4\_internal) | Ipv4 address of instance b | `string` | n/a | yes |
| <a name="input_ip_version"></a> [ip\_version](#input\_ip\_version) | IP version of addresse | `string` | `"ipv4"` | no |
| <a name="input_nlb_healthcheck_name_1"></a> [nlb\_healthcheck\_name\_1](#input\_nlb\_healthcheck\_name\_1) | Name of m nlb healthcheacer 1 | `string` | `"mosrsh-nlb-healthcheck-1"` | no |
| <a name="input_nlb_listener_listen_port_internal"></a> [nlb\_listener\_listen\_port\_internal](#input\_nlb\_listener\_listen\_port\_internal) | Listen port of Instances | `string` | `"80"` | no |
| <a name="input_nlb_listener_listen_port_outside"></a> [nlb\_listener\_listen\_port\_outside](#input\_nlb\_listener\_listen\_port\_outside) | Listen port of Morsh NLB listener 1 | `string` | `"80"` | no |
| <a name="input_nlb_name"></a> [nlb\_name](#input\_nlb\_name) | Name  of NLB | `string` | `"morsh-nlb"` | no |
| <a name="input_nlb_name_listener_1"></a> [nlb\_name\_listener\_1](#input\_nlb\_name\_listener\_1) | Name of NLB listener | `string` | `"mosrsh-nlb-listener-1"` | no |
| <a name="input_nlb_target_group"></a> [nlb\_target\_group](#input\_nlb\_target\_group) | Name of tager groups of Instances | `string` | `"morsh-nlb-target-group"` | no |
| <a name="input_service_account_key_yandex"></a> [service\_account\_key\_yandex](#input\_service\_account\_key\_yandex) | Modules providers auth key in yandex. Not storing in module | `string` | `"./key.json"` | no |
| <a name="input_vpc_subnet_id_a"></a> [vpc\_subnet\_id\_a](#input\_vpc\_subnet\_id\_a) | Subnet were instance a located | `string` | n/a | yes |
| <a name="input_vpc_subnet_id_b"></a> [vpc\_subnet\_id\_b](#input\_vpc\_subnet\_id\_b) | Subnet were instance b located | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
