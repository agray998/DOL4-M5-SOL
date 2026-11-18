# Terraform Examples

## Lab 5
### Usage
```bash
cd lab5
terraform init
terraform plan -out lab5.tfplan
# review the plan. If you are happy, proceed
terraform apply lab5.tfplan
terraform output private_key | cat - >> key.pem
ssh -i key.pem ubuntu@$(terraform output instance_ip)
```
