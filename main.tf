# mkdir -p modules/instances modules/storage
# touch main.tf variables.tf
# touch modules/instances/instances.tf modules/instances/outputs.tf modules/instances/variables.tf
# touch modules/storage/storage.tf modules/storage/outputs.tf modules/storage/variables.tf

# terraform import 'module.google_vm_instances.google_compute_instance.tf-instance["tf-instance-1"]' 74f89dc72755617f77e23
# terraform import 'module.google_vm_instances.google_compute_instance.tf-instance["tf-instance-1"]' 74f89dc72755617f77e23

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
  /*  backend "gcs" {
    bucket  = "# REPLACE WITH YOUR BUCKET NAME"
    prefix  = "terraform/state"
  }*/
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

module "google_vm_instances" {
  source = "./modules/instances"

  project_id = var.project_id
  region     = var.region
  zone       = var.zone
  vm_instances = {
    tf-instance-1 = {
      machine_type     = ""
      image            = ""
      vpc_network_link = "default"
      #      vpc_sub_network_link = ""
      vm_static_ip_address = ""
      tags                 = []
    }
    tf-instance-2 = {
      machine_type     = ""
      image            = ""
      vpc_network_link = ""
      #      vpc_sub_network_link = ""
      vm_static_ip_address = ""
      tags                 = []
    }
    /*tf-instance-3 = {
      machine_type         = ""
      image                = ""
      vpc_network_link     = ""
      vm_static_ip_address = ""
      tags                 = []
    }*/
  }
}
/*
module "google_storage" {
  source     = "./modules/storage"
  project_id = var.project_id
  region     = var.region
  zone       = var.zone

}
*/
/*
module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "~> 6.0"

  project_id   = var.project_id
  network_name = "???"
  routing_mode = "GLOBAL"

  subnets = [
    {
      subnet_name   = "subnet-01"
      subnet_ip     = "10.10.10.0/24"
      subnet_region = var.region
    },
    {
      subnet_name   = "subnet-02"
      subnet_ip     = "10.10.20.0/24"
      subnet_region = var.region
    }
  ]
}

resource "google_compute_firewall" "tf-firewall" {
  name          = "tf-firewall"
  network       = module.vpc.network_self_link
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
}
*/