variable "private_key_algorithm" {
  description = "RSA, ECDSA or ED25519"
  type        = string
  default     = "RSA"
}
variable "rsa_bits" {
  description = "The size of the generated RSA key in bits"
  type        = number
  default     = 2048
}
variable "private_key_filename" {
  description = "Path and name of the private key file to write out"
  type        = string
  default     = "private_key.pem"
}

variable "certificate_filename" {
  description = "Path and name of the certificate file to write out"
  type        = string
  default     = "certificate.pem"
}
variable "dns_names" {
  description = "List of SAN entries for the cert"
  type        = list(any)
  default     = null
}
variable "cert_validity_period_hours" {
  description = "How many hours is the cert valid for"
  type        = number
  default     = 168
}
variable "allowed_uses" {
  description = "Any of: any_extended, cert_signing, client_auth, code_signing, content_commitment, crl_signing, data_encipherment, decipher_only, digital_signature, email_protection, encipher_only, ipsec_end_system, ipsec_tunnel, ipsec_user, key_agreement, key_encipherment, microsoft_commercial_code_signing, microsoft_kernel_code_signing, microsoft_server_gated_crypto, netscape_server_gated_crypto, ocsp_signing, server_auth, timestamping"
  type        = list(any)
  default     = null
}
variable "common_name" {
  description = "value"
  type        = string
  default     = null
}
variable "organization" {
  description = "value"
  type        = string
  default     = null
}
variable "organizational_unit" {
  description = "value"
  type        = string
  default     = null
}
variable "country" {
  description = "value"
  type        = string
  default     = null
}
variable "province" {
  description = "value"
  type        = string
  default     = null
}
