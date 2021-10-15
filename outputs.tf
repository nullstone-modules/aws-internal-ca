output "root_cert_pem" {
  value       = tls_self_signed_cert.this.cert_pem
  description = "string ||| The root certificate pem"
}

output "root_key_secret_id" {
  value       = aws_secretsmanager_secret.private_key.id
  description = "string ||| The AWS secrets manager secret id containing the root private key pem"
}

output "root_subject" {
  value       = tls_self_signed_cert.this.subject
  description = "object({ common_name: string, organization: string }) ||| The subject on the root certificate"
}
