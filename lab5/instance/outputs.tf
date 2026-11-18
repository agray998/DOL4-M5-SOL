output "instance_ip" {
  value = aws_instance.main.public_ip
}

output "key" {
  value = tls_private_key.pk.private_key_pem
  sensitive = true
}
