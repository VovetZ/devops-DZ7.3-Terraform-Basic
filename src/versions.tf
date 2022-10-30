//https://cloud.yandex.ru/docs/tutorials/infrastructure-management/terraform-quickstart#get-credentials
terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}


data "yandex_compute_image" "ubuntu_image" {
  family = "ubuntu-2204-lts"
}

variable "instance_name" {
  default = "netology1"
}



// Заменить на ID своего облака
// https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_cloud_id" {
  default = ""
}

// Заменить на Folder своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_folder_id" {
  default = ""
}

provider "yandex" {
  zone      = "ru-central1-a"
  cloud_id  = var.yandex_cloud_id
  folder_id = var.yandex_folder_id
}


