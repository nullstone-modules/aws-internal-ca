resource "aws_secretsmanager_secret" "private_key" {
  name = "${local.resource_name}/private_key"
  tags = local.tags
}

resource "aws_secretsmanager_secret_version" "private_key" {
  secret_id     = aws_secretsmanager_secret.private_key.id
  secret_string = tls_private_key.this.private_key_pem
}
