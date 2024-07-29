variable "project_id" {
  description = "id of the project."
  type        = string
  default     = "qwiklabs-gcp-04-3f993c35d2d9"
}
variable "region" {
  description = "GCP region for all resources."
  type        = string
  default     = "us-east4"
}
variable "zone" {
  description = "GCP zone for all resources."
  type        = string
  default     = "us-east4-c"
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
  default     = "tf-vpc-764077"
}
variable "bucket_name" {
  description = "bucket name"
  type        = string
  default     = "tf-bucket-718247"
}