
variable "service_account_key_yandex" {
  type        = string
  default     = "./key.json"
  description = "Modules providers auth key in yandex. Not storing in module"
}

variable "creation_zone_yandex" {
  type        = string
  description = "Name of zone were located resources. Mandatory"

}


variable "cloud_id" {
  type    = string
  default = "b1gm80drf2f2dk70jc3f"
}


variable "folder_id" {
  type    = string
  default = "b1g16ac5if9cnssnhfip"
}



variable "vm_name_bastion" {
  type    = string
  default = "morsh_bastion"
}


variable "vm_vcpu_type" {
  type    = string
  default = "standard-v2"
}


variable "vm_vcpu_qty" {
  type    = string
  default = "2"
}


variable "vm_ram_qty" {
  type    = string
  default = "2"
}


variable "vpc_subnet_id" {
  type = string
}


variable "os_disk_type" {
  type    = string
  default = "network-ssd"
}


variable "os_disk_size" {
  type    = string
  default = "5"
}

variable "source_image" {
  type    = string
  default = "lamp"
}