
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



variable "nlb_name" {
  type        = string
  default     = "morsh-nlb"
  description = "Name  of NLB"
}


variable "nlb_name_listener_1" {
  type        = string
  default     = "mosrsh-nlb-listener-1"
  description = "Name of NLB listener"
}


variable "nlb_listener_listen_port_outside" {
  type        = string
  default     = "80"
  description = "Listen port of Morsh NLB listener 1"
}

variable "nlb_listener_listen_port_internal" {
  type        = string
  default     = "80"
  description = "Listen port of Instances"
}

variable "vpc_subnet_id_a" {
  type        = string
  description = "Subnet were instance a located"
}



variable "vpc_subnet_id_b" {
  type        = string
  description = "Subnet were instance b located"
}

variable "nlb_target_group" {
  type        = string
  default     = "morsh-nlb-target-group"
  description = "Name of tager groups of Instances"

}
variable "nlb_healthcheck_name_1" {
  type        = string
  default     = "mosrsh-nlb-healthcheck-1"
  description = "Name of m nlb healthcheacer 1"
}

variable "ip_version" {
  type        = string
  default     = "ipv4"
  description = "IP version of addresse"
}

variable "instance_a_ipv4_internal" {
  type        = string
  description = "Ipv4 address of instance a"

}

variable "instance_b_ipv4_internal" {
  type        = string
  description = "Ipv4 address of instance b"

}
