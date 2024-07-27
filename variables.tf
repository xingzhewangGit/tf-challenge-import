variable "project_id" {
  description = "id of the project."
  type        = string
  default     = "qwiklabs-gcp-01-c9019aac6b03"
}
variable "region" {
  description = "GCP region for all resources."
  type        = string
  default     = "europe-west1"
}
variable "zone" {
  description = "GCP zone for all resources."
  type        = string
  default     = "europe-west1-d"
}

variable "machine_type" {
  description = "machine_type"
  type        = string
  default     = "e2-standard-2"
}
variable "image" {
  description = "image"
  type        = string
  default     = "debian-cloud/debian-11"
}
variable "vpc_link" {
  description = "vpc link"
  type        = string
  default     = "default"
}
variable "vpc_name_new" {
  description = "vpc link"
  type        = string
  default     = "tf-vpc-193205"
}