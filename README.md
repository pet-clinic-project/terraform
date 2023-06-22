# terraform
Terraform infra code for Petclinic Project

Backend configuration

terraform init \
    -backend-config="key=dev/vpc.tfstate" \
    -backend-config="bucket=dcube-terraform-state" \
    -backend-config="region=us-west-2" \
    -var-file=../../vars/infra/dev/vpc.tfvars

terraform apply -var-file=../../vars/infra/dev/vpc.tfvars

terraform destroy \
    -backend-config="key=dev/vpc.tfstate" \
    -backend-config="bucket=dcube-terraform-state" \
    -backend-config="region=us-west-2" \
    -var-file=../../vars/infra/dev/vpc.tfvars