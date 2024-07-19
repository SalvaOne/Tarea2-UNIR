## Creación de la red virtual y la subred ##

resource "azurerm_virtual_network" "red_tarea2_unir" {
  subscription_id = "4aedf5f0-99b5-4324-9b9f-8d1ceac546eb"
  # Indicamos el grupo de recursos donde se creará la red virtual
  resource_group_name = azurerm_resource_group.tarea2.name

  # Establecemos el nombre de la red virtual
  name = "Red-Tarea2-UNIR"

  # Indicamos la región
  location = azurerm_resource_group.tarea2.location

  # Definimos el espacio de direcciones IPv4
  address_ranges = ["172.16.16.0/24"]

  # Añadimos etiquetas (opcional)
  tags = {
    Red = "Tarea2UNIR"
  }
}

resource "azurerm_subnet" "subnet" {
  name                 = "${random_pet.prefix.id}-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

## Creación de la IP pública ##

resource "azurerm_public_ip" "public_ip" {
  name                = "${random_pet.prefix.id}-public-ip"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Dynamic"
}
