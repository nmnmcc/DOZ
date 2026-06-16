variable "project_root" {
  description = "Absolute path to the project root on the host"
  type        = string
}

variable "postgres_user" {
  type    = string
  default = "doz"
}

variable "postgres_password" {
  type    = string
  default = "doz"
}

variable "postgres_db" {
  type    = string
  default = "doz"
}

variable "s3_access_key" {
  type    = string
  default = "doz-dev"
}

variable "s3_secret_key" {
  type    = string
  default = "doz-dev-secret"
}
