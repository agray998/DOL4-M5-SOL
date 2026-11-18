output "instance_ip" {
  value = [module.ec2_1.instance_ip, module.ec2_2.instance_ip]
}
