resource "tls_private_key" "sshkey" {
  algorithm = "RSA"
  rsa_bits  = 4096

}

output "tls_private_key" {

  value     = tls_private_key.sshkey.private_key_pem
  sensitive = true

}