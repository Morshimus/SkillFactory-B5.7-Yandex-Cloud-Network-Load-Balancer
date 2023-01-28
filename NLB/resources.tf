resource "yandex_lb_target_group" "morsh_nlb_target_group" {
  name = var.nlb_target_group

  target {
    subnet_id = var.vpc_subnet_id_a
    address   = var.instance_a_ipv4_internal
  }

  target {
    subnet_id = var.vpc_subnet_id_b
    address   = var.instance_b_ipv4_internal
  }

  lifecycle {
    ignore_changes = [
      region_id
    ]
  }
}

resource "yandex_lb_network_load_balancer" "morsh_nlb" {
  name = var.nlb_name
  listener {
    name = var.nlb_name_listener_1
    port = var.nlb_listener_listen_port_outside
    external_address_spec {
      ip_version = var.ip_version
    }
  }
  attached_target_group {
    target_group_id = yandex_lb_target_group.morsh_nlb_target_group.id
    healthcheck {
      name = var.nlb_healthcheck_name_1
      http_options {
        port = var.nlb_listener_listen_port_internal
        path = "/"
      }
    }
  }

  lifecycle {
    ignore_changes = [
      region_id
    ]
  }
}