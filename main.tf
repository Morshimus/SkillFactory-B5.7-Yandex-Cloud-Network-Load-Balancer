terraform {
  required_version = ">= 1.3.5"
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "~> 0.84.0"
    }
  }
  backend "s3" {
    endpoint = "storage.yandexcloud.net"
    region   = "ru-central1"
    key      = "SF-B5-7.tfstate"


    skip_region_validation      = true
    skip_credentials_validation = true
  }
}




