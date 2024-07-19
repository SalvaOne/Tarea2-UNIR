# Creamos el grupo de recursos en Azure
resource "azurerm_resource_group" "tarea2" {
  # Especificamos la suscripción Azure for Students
  subscription_id = "4aedf5f0-99b5-4324-9b9f-8d1ceac546eb"

  # Establecemos el nombre y region
  name = "Tarea2-UNIR-rg"
  location = "westus2"

  # Añadimos etiquetas (tags)
  tags = {
    Tarea = "Tarea2"
    Autor = "Salvador"
  }
}