variable "project" {
  type    = string
  default = "rocketech-de-pgcp-sandbox"
}

variable "cloud_sql_database_name" {
  type    = string
  default = "application-backenddb-demo"
}

variable "region" {
  type    = string
  default = "europe-west2"
}

variable "zone" {
  type    = string
  default = "europe-west2-b"
}

variable "db_tier" {
  type    = string
  default = "db-g1-small"
}

variable "proxy_machine_type" {
  type    = string
  default = "e2-small"
}

variable "network_name" {
  type    = string
  default = "private"
}

variable "subnetwork_name" {
  type    = string
  default = "private-1"
}