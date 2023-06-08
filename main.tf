provider "tls" {
}

# RSA key of size 4096 bits
resource "tls_private_key" "rsa-4096-key" {
  algorithm = var.private_key_algorithm
  rsa_bits  = var.rsa_bits
}

# save private key to local file
resource "local_file" "tls-private_key" {
  filename = var.private_key_filename
  content  = tls_private_key.rsa-4096-key.private_key_pem
}

# generate self-signed cert
resource "tls_self_signed_cert" "cert" {
  #private_key_pem = file(var.private_key_filename)
  private_key_pem = tls_private_key.rsa-4096-key.private_key_pem
  dns_names       = var.dns_names

  subject {
    common_name         = var.common_name
    organization        = var.organization
    organizational_unit = var.organizational_unit
    country             = var.country
    province            = var.province
  }

  validity_period_hours = var.cert_validity_period_hours
  allowed_uses          = var.allowed_uses
}

# save certificate to local file
resource "local_file" "tls-cert" {
  filename = var.certificate_filename
  content  = tls_self_signed_cert.cert.cert_pem
}
