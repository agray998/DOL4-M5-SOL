output "instance_ip" {
  value = [for ins in module.lab_instance : ins.instance_ip]
}

output "private_key" {
  value = [for ins in module.lab_instance : ins.key]
  sensitive = true
}
