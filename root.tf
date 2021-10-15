resource "tls_private_key" "this" {
  algorithm = "RSA"
  rsa_bits  = 3072
}

resource "tls_self_signed_cert" "this" {
  key_algorithm         = "RSA"
  private_key_pem       = tls_private_key.this.private_key_pem
  validity_period_hours = var.valid_hours
  is_ca_certificate     = true

  subject {
    common_name  = var.common_name
    organization = var.organization
  }

  allowed_uses = [
    "cert_signing"
  ]
}
