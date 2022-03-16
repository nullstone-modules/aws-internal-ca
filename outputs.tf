output "root_cert_pem" {
  value       = tls_self_signed_cert.this.cert_pem
  description = "string ||| The root certificate pem"
}

output "root_key_secret_id" {
  value       = aws_secretsmanager_secret.private_key.id
  description = "string ||| The AWS secrets manager secret id containing the root private key pem"
}

output "root_subject" {
  value       = tls_self_signed_cert.this.subject[0]
  description = "object({ common_name: string, organization: string }) ||| The subject on the root certificate"
}

output "root_acm_cert_arn" {
  value       = aws_acm_certificate.this.arn
  description = "string ||| The ARN of the CA certificate imported into AWS ACM"
}

output "root_acm_cert_domain" {
  value       = aws_acm_certificate.this.domain_name
  description = "string ||| The domain of the CA certificate imported into AWS ACM"
}
