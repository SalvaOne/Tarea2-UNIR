variable "name" {
  type        = string
  default     = "tarea2-devops"
  description = "Nombre de los recursos"
}

variable "location" {
  type        = string
  default     = "uksouth"
  description = "Region por defecto"
}

variable "tags" {
  type = map(string)
}