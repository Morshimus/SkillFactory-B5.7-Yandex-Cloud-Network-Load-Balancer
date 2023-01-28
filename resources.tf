resource "yandex_vpc_network" "morsh-network" {
  name = var.network_name

}


resource "yandex_vpc_subnet" "morsh-subnet-a-dmz" {
  name           = var.subnet_a_name
  description    = var.subnet_a_description
  v4_cidr_blocks = var.subnet_a_v4_cidr_blocks
  zone           = var.zone_a
  network_id     = yandex_vpc_network.morsh-network.id

}


resource "yandex_vpc_subnet" "morsh-subnet-b-dmz" {
  name           = var.subnet_b_name
  description    = var.subnet_b_description
  v4_cidr_blocks = var.subnet_b_v4_cidr_blocks
  zone           = var.zone_b
  network_id     = yandex_vpc_network.morsh-network.id

}


module "ya_instance_1" {
  source        = "./INSTANCE"
  source_image  = "lemp"
  vpc_subnet_id = yandex_vpc_subnet.morsh-subnet-a-dmz.id
  creation_zone = var.zone_a
}

module "ya_instance_2" {
  source        = "./INSTANCE"
  source_image  = "lamp"
  vpc_subnet_id = yandex_vpc_subnet.morsh-subnet-b-dmz.id
  creation_zone = var.zone_b
}