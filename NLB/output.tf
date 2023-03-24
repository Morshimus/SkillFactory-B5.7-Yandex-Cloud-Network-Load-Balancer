output "lb_ip_external_address_simple" {
  value = yandex_lb_network_load_balancer.morsh_nlb.listener.*.external_address_spec[0].*.address
}

output "lb_ip_external_address_hard" {
  value = local.external_ip_lb_1
}