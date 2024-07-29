# mkdir -p modules/instances modules/storage
# touch main.tf variables.tf
# touch modules/instances/instances.tf modules/instances/outputs.tf modules/instances/variables.tf
# touch modules/storage/storage.tf modules/storage/outputs.tf modules/storage/variables.tf
# terraform init -upgrade


terraform {
  required_version = ">=0.12.6"

  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 4.85.0, < 5.0.0"
    }
    null = {
      version = ">= 3.0"
    }
    random = {
      version = ">= 3.0"
    }
  }
   backend "gcs" {
   bucket  = "tf-bucket-718247"
   prefix  = "terraform/state"
 }
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
      machine_type     = var.machine_type
      image            = var.image
      vpc_network_link = "tf-vpc-764077"
      vpc_sub_network_link = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-04-3f993c35d2d9/regions/us-east4/subnetworks/subnet-01"
      # vm_static_ip_address = "10.128.0.2"
      tags                 = []
    }
    tf-instance-2 = {
      machine_type     = var.machine_type
      image            = var.image
      vpc_network_link = "tf-vpc-764077"
      vpc_sub_network_link = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-04-3f993c35d2d9/regions/us-east4/subnetworks/subnet-02"
      # vm_static_ip_address = "10.128.0.3"
      tags                 = []
    }
    # tf-instance-155987 = {
    #   machine_type         = var.machine_type
    #   image                = var.image
    #   vpc_network_link     = var.vpc_link
    #   #      vpc_sub_network_link = ""
    # #  vm_static_ip_address = ""
    #   tags                 = []
    # }
  }
}

module "google_storage" {
  source     = "./modules/storage"
  project_id = var.project_id
  region     = var.region
  zone       = var.zone
  bucket_name       = var.bucket_name
}

module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "6.0.0"

  project_id   = var.project_id
  network_name = var.vpc_link_new
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

# resource "google_compute_firewall" "tf-firewall" {
#   name          = "tf-firewall"
#   network       = module.vpc.network_self_link
#   source_ranges = ["0.0.0.0/0"]

#   allow {
#     protocol = "tcp"
#     ports    = ["80"]
#   }
# }
