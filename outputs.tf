output "root_cert_pem" {
  value = tls_self_signed_cert.this.cert_pem
}

output "root_key_secret_id" {
  value = aws_secretsmanager_secret.private_key.id
}
