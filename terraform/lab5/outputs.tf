output "instance_ip" {
  value = [for ins in module.lab_instance_dev : ins.instance_ip]
}

output "private_key" {
  value = [for ins in module.lab_instance_dev : ins.key]
  sensitive = true
}
