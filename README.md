# **SkillFactory-B5.7-Yandex-Cloud-Network-Load-Balancer**

## Задание:
* [x] - :one: ~~Добавить в проект Network Load Balancer таким образом, чтобы за ним были созданные нами инстансы.~~



![image](https://db3pap003files.storage.live.com/y4mL-lDT5CpIMtiA0fyPYemiLdB3vQQGHXwo9gtxB5t1hiiwBQ0ZS_sGTPqtU8ebfL3qDvH_IxJibVYDSjwl2zPV3JhFlomZFGOG5BqV5z7y5P6-1d3S0DVjlIrklIOPJP6_a5lwiGSJL-gDQBlEWMLwQlIiEjbhE8el61_gESkaHTPVC9XEUfHc4npC1FjuVvo-a7A7djTBY7ITeWRYEU3aQ/VM_LEMP%2BLAMP.jpg?psid=1&width=1775&height=558) 

* [ ] - :two: **Трафик должен делиться поровну между инстансами.**
* [ ] - :three: **Доступ к инстансам должен быть возможен как через IP Load Balancer, так и через их публичные IP.**

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

| Name | Source | Version |
|------|--------|---------|
| <a name="module_morsh_instance_ya_1"></a> [morsh\_instance\_ya\_1](#module\_morsh\_instance\_ya\_1) | ./INSTANCE | n/a |
| <a name="module_morsh_instance_ya_2"></a> [morsh\_instance\_ya\_2](#module\_morsh\_instance\_ya\_2) | ./INSTANCE | n/a |
| <a name="module_morsh_nlb_ya_1"></a> [morsh\_nlb\_ya\_1](#module\_morsh\_nlb\_ya\_1) | ./NLB | n/a |

## Resources

| Name | Type |
|------|------|
| [yandex_vpc_network.morsh-network](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.morsh-subnet-a](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_subnet) | resource |
| [yandex_vpc_subnet.morsh-subnet-b](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id_yandex"></a> [cloud\_id\_yandex](#input\_cloud\_id\_yandex) | Cloud id of yandex.cloud provider | `string` | n/a | yes |
| <a name="input_folder_id_yandex"></a> [folder\_id\_yandex](#input\_folder\_id\_yandex) | Folder id of yandex.cloud provider | `string` | n/a | yes |
| <a name="input_network_name_yandex"></a> [network\_name\_yandex](#input\_network\_name\_yandex) | Created netowork in yandex.cloud name | `string` | n/a | yes |
| <a name="input_service_account_key_yandex"></a> [service\_account\_key\_yandex](#input\_service\_account\_key\_yandex) | Local storing service key. Not in git tracking | `string` | `"./key.json"` | no |
| <a name="input_subnet_a_description_yandex"></a> [subnet\_a\_description\_yandex](#input\_subnet\_a\_description\_yandex) | n/a | `string` | `"Subnet A for morshimus instance A"` | no |
| <a name="input_subnet_a_name_yandex"></a> [subnet\_a\_name\_yandex](#input\_subnet\_a\_name\_yandex) | Subnet for 1st instance | `string` | `"morsh-subnet-a"` | no |
| <a name="input_subnet_a_v4_cidr_blocks_yandex"></a> [subnet\_a\_v4\_cidr\_blocks\_yandex](#input\_subnet\_a\_v4\_cidr\_blocks\_yandex) | IPv4 network for 1st instance subnet | `list(string)` | <pre>[<br>  "192.168.21.0/28"<br>]</pre> | no |
| <a name="input_subnet_b_description_yandex"></a> [subnet\_b\_description\_yandex](#input\_subnet\_b\_description\_yandex) | n/a | `string` | `"Subnet B for morshimus instance B"` | no |
| <a name="input_subnet_b_name_yandex"></a> [subnet\_b\_name\_yandex](#input\_subnet\_b\_name\_yandex) | Subnet for 2nd instance | `string` | `"morsh-subnet-b"` | no |
| <a name="input_subnet_b_v4_cidr_blocks_yandex"></a> [subnet\_b\_v4\_cidr\_blocks\_yandex](#input\_subnet\_b\_v4\_cidr\_blocks\_yandex) | IPv4 network for 2st instance subnet | `list(string)` | <pre>[<br>  "192.168.22.0/28"<br>]</pre> | no |
| <a name="input_zone_yandex_a"></a> [zone\_yandex\_a](#input\_zone\_yandex\_a) | Zone of 1st instance in yandex cloud | `string` | `"ru-central1-a"` | no |
| <a name="input_zone_yandex_b"></a> [zone\_yandex\_b](#input\_zone\_yandex\_b) | Zone of 2nd instance in yandex cloud | `string` | `"ru-central1-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_external_ip_address_vm_1"></a> [external\_ip\_address\_vm\_1](#output\_external\_ip\_address\_vm\_1) | n/a |
| <a name="output_external_ip_address_vm_2"></a> [external\_ip\_address\_vm\_2](#output\_external\_ip\_address\_vm\_2) | n/a |
| <a name="output_internal_ip_address_vm_1"></a> [internal\_ip\_address\_vm\_1](#output\_internal\_ip\_address\_vm\_1) | n/a |
| <a name="output_internal_ip_address_vm_2"></a> [internal\_ip\_address\_vm\_2](#output\_internal\_ip\_address\_vm\_2) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
