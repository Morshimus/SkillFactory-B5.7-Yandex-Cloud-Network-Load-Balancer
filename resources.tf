resource "yandex_vpc_network" "morsh-network" {
  name = var.network_name_yandex

}


resource "yandex_vpc_subnet" "morsh-subnet-a" {
  name           = var.subnet_a_name_yandex
  description    = var.subnet_a_description_yandex
  v4_cidr_blocks = var.subnet_a_v4_cidr_blocks_yandex
  zone           = var.zone_yandex_a
  network_id     = yandex_vpc_network.morsh-network.id

}


resource "yandex_vpc_subnet" "morsh-subnet-b" {
  name           = var.subnet_b_name_yandex
  description    = var.subnet_b_description_yandex
  v4_cidr_blocks = var.subnet_b_v4_cidr_blocks_yandex
  zone           = var.zone_yandex_b
  network_id     = yandex_vpc_network.morsh-network.id

}


module "morsh_instance_ya_1" {
  source               = "./INSTANCE"
  source_image         = "lemp"
  vpc_subnet_id        = yandex_vpc_subnet.morsh-subnet-a.id
  creation_zone_yandex = var.zone_yandex_a
}

module "morsh_instance_ya_2" {
  source               = "./INSTANCE"
  source_image         = "lamp"
  vpc_subnet_id        = yandex_vpc_subnet.morsh-subnet-b.id
  creation_zone_yandex = var.zone_yandex_b
}


module "morsh_nlb_ya_1" {
  source                   = "./NLB"
  vpc_subnet_id_b          = yandex_vpc_subnet.morsh-subnet-b.id
  vpc_subnet_id_a          = yandex_vpc_subnet.morsh-subnet-a.id
  instance_a_ipv4_internal = module.morsh_instance_ya_1.internal_ip_address_morsh_bastion
  instance_b_ipv4_internal = module.morsh_instance_ya_2.internal_ip_address_morsh_bastion
  creation_zone_yandex     = var.zone_yandex_a


}