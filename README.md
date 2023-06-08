<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | 2.4.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 4.0.4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [local_file.tls-cert](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [local_file.tls-private_key](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [tls_private_key.rsa-4096-key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [tls_self_signed_cert.cert](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/self_signed_cert) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_uses"></a> [allowed\_uses](#input\_allowed\_uses) | Any of: any\_extended, cert\_signing, client\_auth, code\_signing, content\_commitment, crl\_signing, data\_encipherment, decipher\_only, digital\_signature, email\_protection, encipher\_only, ipsec\_end\_system, ipsec\_tunnel, ipsec\_user, key\_agreement, key\_encipherment, microsoft\_commercial\_code\_signing, microsoft\_kernel\_code\_signing, microsoft\_server\_gated\_crypto, netscape\_server\_gated\_crypto, ocsp\_signing, server\_auth, timestamping | `list(any)` | `null` | no |
| <a name="input_cert_validity_period_hours"></a> [cert\_validity\_period\_hours](#input\_cert\_validity\_period\_hours) | How many hours is the cert valid for | `number` | `168` | no |
| <a name="input_certificate_filename"></a> [certificate\_filename](#input\_certificate\_filename) | Path and name of the certificate file to write out | `string` | `"certificate.pem"` | no |
| <a name="input_common_name"></a> [common\_name](#input\_common\_name) | value | `string` | `null` | no |
| <a name="input_country"></a> [country](#input\_country) | value | `string` | `null` | no |
| <a name="input_dns_names"></a> [dns\_names](#input\_dns\_names) | List of SAN entries for the cert | `list(any)` | `null` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | value | `string` | `null` | no |
| <a name="input_organizational_unit"></a> [organizational\_unit](#input\_organizational\_unit) | value | `string` | `null` | no |
| <a name="input_private_key_algorithm"></a> [private\_key\_algorithm](#input\_private\_key\_algorithm) | RSA, ECDSA or ED25519 | `string` | `"RSA"` | no |
| <a name="input_private_key_filename"></a> [private\_key\_filename](#input\_private\_key\_filename) | Path and name of the private key file to write out | `string` | `"private_key.pem"` | no |
| <a name="input_province"></a> [province](#input\_province) | value | `string` | `null` | no |
| <a name="input_rsa_bits"></a> [rsa\_bits](#input\_rsa\_bits) | The size of the generated RSA key in bits | `number` | `2048` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_key_pem"></a> [private\_key\_pem](#output\_private\_key\_pem) | Private Key |
| <a name="output_tls_self_signed_cert"></a> [tls\_self\_signed\_cert](#output\_tls\_self\_signed\_cert) | TLS Certificate |
<!-- END_TF_DOCS -->