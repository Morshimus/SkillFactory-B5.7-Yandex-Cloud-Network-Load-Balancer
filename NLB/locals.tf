locals {

 external_ip_lb_1 = [
    for s in yandex_lb_network_load_balancer.morsh_nlb.listener: s.external_address_spec.*.address 
    if s.name == var.nlb_name_listener_1
    ].0[0]

}