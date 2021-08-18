provider "azurerm" {
  features {}
}

resource "azurerm_kubernetes_cluster" "cluster" {
  name                = "learnk8scluster"
  dns_prefix          = "learnk8scluster"
  resource_group_name = "implementing_microservices"
  location            = "southindia"

  default_node_pool {
    name       = "default"
    node_count = "2"
    vm_size    = "standard_d2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}
