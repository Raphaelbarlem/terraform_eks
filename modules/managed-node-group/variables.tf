variable "project_name" {
  type        = string
  description = "project name to be used to name te resources (tag name) "
}

variable "tags" {
  type        = map(string)
  description = "tags to be added to AWS resources"
}

variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"

}

variable "subnet_private_1a" {
  type        = string
  description = "subnet ID from AZ 1a"

}

variable "subnet_private_1b" {
  type        = string
  description = "subnet ID from AZ 1b"

}
