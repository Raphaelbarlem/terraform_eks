variable "project_name" {
  type        = string
  description = "project name to be used to name te resources (tag name) "
}

variable "tags" {
  type        = map(string)
  description = "tags to be added to AWS resources"
}

variable "public_subnet_1a" {
  type        = string
  description = "subnet to be added to AWS public AZ 1a"
}

variable "public_subnet_1b" {
  type        = string
  description = "subnet to be added to AWS public AZ 1b"
}

variable "cluster_version" {
  type        = string
  description = "Versão do Kubernetes"
  default     = "1.29"
}
