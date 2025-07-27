variable "databricks_host" {}
variable "databricks_token" {}

variable "cluster_name" {
  default = "pyspark-dev-cluster"
}

variable "spark_version" {
  default = "13.3.x-scala2.12"
}

variable "node_type" {
  default = "Standard_DS3_v2"
}

variable "autotermination_minutes" {
  default = 30
}

variable "min_workers" {
  default = 1
}

variable "max_workers" {
  default = 4
}

variable "owner" {
  default = "data.engineer@datateam.com"
}

variable "environment" {
  default = "dev"
}

variable "project" {
  default = "platform-demo"
}
