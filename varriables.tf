variable "network_name" {
  type = string
}

variable "service_account_key" {
  type    = string
  default = "./key.json"
}

variable "zone_a" {
  type = string
}


variable "zone_b" {
  type = string
}

variable "subnet_a_name" {
  type = string
}

variable "subnet_a_v4_cidr_blocks" {
  type = list(any)
}

variable "subnet_a_description" {
  type = string
}

variable "subnet_b_name" {
  type = string
}

variable "subnet_b_v4_cidr_blocks" {
  type = list(any)
}

variable "subnet_b_description" {
  type = string
}


variable "cloud_id" {
  type = string
}


variable "folder_id" {
  type = string
}
