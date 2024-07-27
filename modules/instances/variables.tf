variable "project_id" {
  description = "id of the project."
  type        = string
}
variable "region" {
  description = "GCP region for all resources."
  type        = string
}
variable "zone" {
  description = "GCP zone for all resources."
  type        = string
}
variable "vm_instances" {
  description = "instance-name."
  type        = map(any)
}