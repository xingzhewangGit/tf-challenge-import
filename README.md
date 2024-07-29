# module.google_storage.google_storage_bucket.test-bucket-for-state:
resource "google_storage_bucket" "test-bucket-for-state" {
    default_event_based_hold    = false
    force_destroy               = true
    id                          = "tf-bucket-391888"
    labels                      = {}
    location                    = "US"
    name                        = "tf-bucket-391888"
    project                     = "qwiklabs-gcp-01-1dd44896fc88"
    public_access_prevention    = "inherited"
    requester_pays              = false
    self_link                   = "https://www.googleapis.com/storage/v1/b/tf-bucket-391888"
    storage_class               = "STANDARD"
    uniform_bucket_level_access = true
    url                         = "gs://tf-bucket-391888"

    soft_delete_policy {
        effective_time             = "2024-07-29T11:38:20.747Z"
        retention_duration_seconds = 604800
    }
}
# module.google_vm_instances.google_compute_instance.tf-instance["tf-instance-1"]:
resource "google_compute_instance" "tf-instance" {
    allow_stopping_for_update = true
    can_ip_forward            = false
    cpu_platform              = "Intel Broadwell"
    current_status            = "RUNNING"
    deletion_protection       = false
    enable_display            = false
    guest_accelerator         = []
    id                        = "projects/qwiklabs-gcp-01-1dd44896fc88/zones/us-east1-b/instances/tf-instance-1"
    instance_id               = "5341465509874024481"
    label_fingerprint         = "42WmSpB8rSM="
    labels                    = {}
    machine_type              = "e2-standard-2"
    metadata                  = {}
    metadata_fingerprint      = "dpmYBc84r2E="
    metadata_startup_script   = <<-EOT
        #!/bin/bash
    EOT
    name                      = "tf-instance-1"
    project                   = "qwiklabs-gcp-01-1dd44896fc88"
    resource_policies         = []
    self_link                 = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-1dd44896fc88/zones/us-east1-b/instances/tf-instance-1"
    tags                      = []
    tags_fingerprint          = "42WmSpB8rSM="
    zone                      = "us-east1-b"

    boot_disk {
        auto_delete = true
        device_name = "persistent-disk-0"
        mode        = "READ_WRITE"
        source      = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-1dd44896fc88/zones/us-east1-b/disks/tf-instance-1"

        initialize_params {
            image                 = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-11-bullseye-v20240709"
            labels                = {}
            resource_manager_tags = {}
            size                  = 10
            type                  = "pd-standard"
        }
    }

    network_interface {
        internal_ipv6_prefix_length = 0
        name                        = "nic0"
        network                     = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-1dd44896fc88/global/networks/default"
        network_ip                  = "10.142.0.5"
        queue_count                 = 0
        stack_type                  = "IPV4_ONLY"
        subnetwork                  = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-1dd44896fc88/regions/us-east1/subnetworks/default"
        subnetwork_project          = "qwiklabs-gcp-01-1dd44896fc88"
    }

    scheduling {
        automatic_restart   = true
        min_node_cpus       = 0
        on_host_maintenance = "MIGRATE"
        preemptible         = false
        provisioning_model  = "STANDARD"
    }

    shielded_instance_config {
        enable_integrity_monitoring = true
        enable_secure_boot          = false
        enable_vtpm                 = true
    }
}

# module.google_vm_instances.google_compute_instance.tf-instance["tf-instance-2"]:
resource "google_compute_instance" "tf-instance" {
    allow_stopping_for_update = true
    can_ip_forward            = false
    cpu_platform              = "Intel Broadwell"
    current_status            = "RUNNING"
    deletion_protection       = false
    enable_display            = false
    guest_accelerator         = []
    id                        = "projects/qwiklabs-gcp-01-1dd44896fc88/zones/us-east1-b/instances/tf-instance-2"
    instance_id               = "1371102384587718700"
    label_fingerprint         = "42WmSpB8rSM="
    labels                    = {}
    machine_type              = "e2-standard-2"
    metadata                  = {}
    metadata_fingerprint      = "dpmYBc84r2E="
    metadata_startup_script   = <<-EOT
        #!/bin/bash
    EOT
    name                      = "tf-instance-2"
    project                   = "qwiklabs-gcp-01-1dd44896fc88"
    resource_policies         = []
    self_link                 = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-1dd44896fc88/zones/us-east1-b/instances/tf-instance-2"
    tags                      = []
    tags_fingerprint          = "42WmSpB8rSM="
    zone                      = "us-east1-b"

    boot_disk {
        auto_delete = true
        device_name = "persistent-disk-0"
        mode        = "READ_WRITE"
        source      = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-1dd44896fc88/zones/us-east1-b/disks/tf-instance-2"

        initialize_params {
            image                 = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-11-bullseye-v20240709"
            labels                = {}
            resource_manager_tags = {}
            size                  = 10
            type                  = "pd-standard"
        }
    }

    network_interface {
        internal_ipv6_prefix_length = 0
        name                        = "nic0"
        network                     = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-1dd44896fc88/global/networks/default"
        network_ip                  = "10.142.0.4"
        queue_count                 = 0
        stack_type                  = "IPV4_ONLY"
        subnetwork                  = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-1dd44896fc88/regions/us-east1/subnetworks/default"
        subnetwork_project          = "qwiklabs-gcp-01-1dd44896fc88"
    }

    scheduling {
        automatic_restart   = true
        min_node_cpus       = 0
        on_host_maintenance = "MIGRATE"
        preemptible         = false
        provisioning_model  = "STANDARD"
    }

    shielded_instance_config {
        enable_integrity_monitoring = true
        enable_secure_boot          = false
        enable_vtpm                 = true
    }
}
# module.vpc.module.subnets.google_compute_subnetwork.subnetwork["us-east1/subnet-01"]:
resource "google_compute_subnetwork" "subnetwork" {
    creation_timestamp         = "2024-07-29T04:55:20.768-07:00"
    gateway_address            = "10.10.10.1"
    id                         = "projects/qwiklabs-gcp-01-1dd44896fc88/regions/us-east1/subnetworks/subnet-01"
    ip_cidr_range              = "10.10.10.0/24"
    name                       = "subnet-01"
    network                    = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-1dd44896fc88/global/networks/tf-vpc-497243"
    private_ip_google_access   = false
    private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
    project                    = "qwiklabs-gcp-01-1dd44896fc88"
    purpose                    = "PRIVATE"
    region                     = "us-east1"
    secondary_ip_range         = []
    self_link                  = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-1dd44896fc88/regions/us-east1/subnetworks/subnet-01"
    stack_type                 = "IPV4_ONLY"
}

# module.vpc.module.subnets.google_compute_subnetwork.subnetwork["us-east1/subnet-02"]:
resource "google_compute_subnetwork" "subnetwork" {
    creation_timestamp         = "2024-07-29T04:55:21.655-07:00"
    gateway_address            = "10.10.20.1"
    id                         = "projects/qwiklabs-gcp-01-1dd44896fc88/regions/us-east1/subnetworks/subnet-02"
    ip_cidr_range              = "10.10.20.0/24"
    name                       = "subnet-02"
    network                    = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-1dd44896fc88/global/networks/tf-vpc-497243"
    private_ip_google_access   = false
    private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
    project                    = "qwiklabs-gcp-01-1dd44896fc88"
    purpose                    = "PRIVATE"
    region                     = "us-east1"
    secondary_ip_range         = []
    self_link                  = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-1dd44896fc88/regions/us-east1/subnetworks/subnet-02"
    stack_type                 = "IPV4_ONLY"
}
# module.vpc.module.vpc.google_compute_network.network:
resource "google_compute_network" "network" {
    auto_create_subnetworks                   = false
    delete_default_routes_on_create           = false
    enable_ula_internal_ipv6                  = false
    id                                        = "projects/qwiklabs-gcp-01-1dd44896fc88/global/networks/tf-vpc-497243"
    mtu                                       = 0
    name                                      = "tf-vpc-497243"
    network_firewall_policy_enforcement_order = "AFTER_CLASSIC_FIREWALL"
    project                                   = "qwiklabs-gcp-01-1dd44896fc88"
    routing_mode                              = "GLOBAL"
    self_link                                 = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-1dd44896fc88/global/networks/tf-vpc-497243"
}
