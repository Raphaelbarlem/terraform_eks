variable "cidr_block" {
  type        = string
  description = "Networking CIDR block to be used for the VPC"
}

variable "project_name" {
  type        = string
  description = "project name to be used to name te resources (tag name) "

}

variable "tags" {
  type = map
  description = "tags to be added to AWS resources"
}
