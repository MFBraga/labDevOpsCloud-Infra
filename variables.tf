## GCP Common Variables
variable "gcp_project_id" {
    type        = string
    default     = "lab-devops-cloud-mbraga"
    description = "GCP Projetc ID reference"
}

variable "gcp_region" {
    type        = string
    default     = "us-west1"
    description = "GCP Default Region"
}

variable "gcp_zone" {
    type        = string
    default     = "us-west1-c"
    description = "GCP Default Zone"
}


## GCP - Compute Instance Variables
variable "gcp_machine" {
    type        = string
    default     = "n1-standard-1"
    description = "GCP Machine Type"
}

variable "gcp_image" {
    type        = string
    default     = "ubuntu-2004-focal-v20220303a"
    description = "GCP Image Reference"
}
