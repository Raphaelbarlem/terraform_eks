variable "project_name" {
  type        = string
  description = "project name to be used to name te resources (tag name) "
}

variable "tags" {
  type        = map(string)
  description = "tags to be added to AWS resources"
}
