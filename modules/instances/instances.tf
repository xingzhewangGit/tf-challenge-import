resource "google_compute_instance" "tf-instance" {
  for_each = var.vm_instances


  name         = each.key
  machine_type = each.value.machine_type
  tags         = each.value.tags

  boot_disk {
    initialize_params {
      image = each.value.image
    }
  }
  network_interface {
    network = each.value.vpc_network_link
    subnetwork = each.value.vpc_sub_network_link
/*
    access_config {
      nat_ip = each.value.vm_static_ip_address
    }
*/
  }
  metadata_startup_script   = <<-EOT
        #!/bin/bash
    EOT
  allow_stopping_for_update = true
}
