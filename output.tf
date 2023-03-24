output "internal_ip_address_vm_1" {
  value = module.morsh_instance_ya_1.internal_ip_address_morsh_bastion
}

output "external_ip_address_vm_1" {
  value = module.morsh_instance_ya_1.external_ip_address_morsh_bastion
}

output "internal_ip_address_vm_2" {
  value = module.morsh_instance_ya_2.internal_ip_address_morsh_bastion
}

output "external_ip_address_vm_2" {
  value = module.morsh_instance_ya_2.external_ip_address_morsh_bastion
}

output "external_ip_address_lb_simple" {
  value = module.morsh_nlb_ya_1.lb_ip_external_address_simple

}

output "external_ip_address_lb_hard" {
  value = module.morsh_nlb_ya_1.lb_ip_external_address_hard

}