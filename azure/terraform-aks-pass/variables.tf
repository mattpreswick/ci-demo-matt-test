variable "appId" {
  description = "Azure Kubernetes Service Cluster service principal"
}

variable "password" {
  description = "Azure Kubernetes Service Cluster password"
  sensitive = true
}

variable "k8s_connector_name" {
  description = "Connector name for the Wiz Connector in the portal"
  default = "YourNameHere-AKS"
}