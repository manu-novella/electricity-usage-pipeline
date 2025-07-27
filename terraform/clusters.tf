provider "databricks" {
  host  = var.databricks_host
  token = var.databricks_token
}

resource "databricks_cluster" "pyspark_cluster" {
  cluster_name            = var.cluster_name
  spark_version           = var.spark_version
  node_type_id            = var.node_type
  autotermination_minutes = var.autotermination_minutes

  autoscale {
    min_workers = var.min_workers
    max_workers = var.max_workers
  }

  spark_env_vars = {
    PYSPARK_PYTHON = "/databricks/python3/bin/python3"
  }

  custom_tags = {
    "Owner"       = var.owner
    "Environment" = var.environment
    "Project"     = var.project
  }

  data_security_mode = "SINGLE_USER"
}
