variable "project_id" {
  description = "id of the project."
  type        = string
  default     = "qwiklabs-gcp-01-1dd44896fc88"
}
variable "region" {
  description = "GCP region for all resources."
  type        = string
  default     = "us-east1"
}
variable "zone" {
  description = "GCP zone for all resources."
  type        = string
  default     = "us-east1-b"
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
variable "vpc_link_new" {
  description = "vpc link"
  type        = string
  default     = "tf-vpc-497243"
}
variable "bucket_name" {
  description = "bucket name"
  type        = string
  default     = "tf-bucket-391888"
}
variable "instance-3" {
  description = "bucket name"
  type        = string
  default     = "tf-instance-846496"
}