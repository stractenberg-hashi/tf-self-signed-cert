output "private_key_pem" {
  description = "Private Key"
  value       = tls_private_key.rsa-4096-key.private_key_pem
  sensitive   = true
}

output "tls_self_signed_cert" {
  description = "TLS Certificate"
  value       = tls_self_signed_cert.cert.cert_pem
  sensitive   = true
}
