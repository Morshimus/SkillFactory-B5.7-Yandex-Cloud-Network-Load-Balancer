output "internal_ip_address_vm_1" {
  value = module.ya_instance_1.internal_ip_address_morsh_bastion
}

output "external_ip_address_vm_1" {
  value = module.ya_instance_1.external_ip_address_morsh_bastion
}

output "internal_ip_address_vm_2" {
  value = module.ya_instance_2.internal_ip_address_morsh_bastion
}

output "external_ip_address_vm_2" {
  value = module.ya_instance_2.external_ip_address_morsh_bastion
}