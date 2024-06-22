# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "region" {
  description = "GCP region"
  default     = "europe-west4"
}

variable "project_id" {
  description = "GCP project ID"
  default     = "spa-newlearningdev-dev-001"
}

variable "instance_type" {
  description = "Type of GCP instance to provision"
  default     = "n1-standard-2"
}

# variable "instance_name" {
#   description = "Type of GCP instance to provision"
#   default     = "poel-instance"
# }

variable "credentials_file" {
  description = "Path to the GCP credentials file"
  default     = null
}