output "lb_ip_external_address_simple" {
  value = yandex_lb_network_load_balancer.morsh_nlb.listener.*.external_address_spec[0].*.address
}

output "lb_ip_external_address_hard" {
  value = "${[for s in yandex_lb_network_load_balancer.morsh_nlb.listener: s.external_address_spec.*.address if s.name == var.nlb_name_listener_1].0[0]}"
}