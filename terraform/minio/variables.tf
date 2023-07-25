variable "bw_password" {
  type        = string
  description = "Bitwarden Master Key"
  sensitive   = true
}

variable "bw_client_id" {
  type        = string
  description = "Bitwarden Client ID"
  sensitive   = true
}

variable "bw_client_secret" {
  type        = string
  description = "Bitwarden Client Secret"
  sensitive   = true
}

variable "bw_server" {
  type        = string
  description = "Bitwarden Host Server"
  sensitive   = true
}

variable "bw_email" {
  type        = string
  description = "Bitwarden User Email"
  sensitive   = true
}

