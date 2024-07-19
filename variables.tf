variable "location" {
  description = "Region de Azure donde desplegaremos los recursos"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Nombre del grupo de recurso en Azure para la tarea 2"
  type        = string
  default     = "Tarea2-UNIR-rg"
}
