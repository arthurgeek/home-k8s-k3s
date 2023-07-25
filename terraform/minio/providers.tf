provider "bitwarden" {
  master_password = var.bw_password
  client_id = var.bw_client_id
  client_secret = var.bw_client_secret
  email = var.bw_email
  server = var.bw_server
}

provider minio {
  minio_server = "minio.storage.svc.cluster.local:9000"
  minio_user = module.secrets_s3.data.access-key
  minio_password = module.secrets_s3.data.secret-key
}
