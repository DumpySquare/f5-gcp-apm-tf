# gcp
variable "GCP_PROJECT_ID" {
  description = "project ID"
}

variable "GCP_REGION" {
  description = "region"
  default = "us-east1"
}
variable "GCP_ZONE" {
  description = "zone"
  default = "us-east1-b"
}
# iam
variable "serviceAccounts" {
  type = "map"
  default = {
      storage = "default-compute@developer.gserviceaccount.com"
      compute = "default-compute@developer.gserviceaccount.com"
    }
}
variable "adminSrcAddr" {
    description = "admin mgmt source address in cidr"
}

# project
variable "gceSshPubKey" {
  description = "GCP GCE Key name for SSH access"
  type        = string
}

variable "projectPrefix" {
  description = "Prefix for resources created by this module"
  type        = string
  default     = "terraform-gcp-bigip-"
}

