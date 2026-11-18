output "instance_ip" {
  value = module.lab_instance.instance_ip
}

output "private_key" {
  value = module.lab_instance.key
  sensitive = true
}
