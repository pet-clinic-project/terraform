# terraform
Terraform infra code for Petclinic Project

Backend configuration

terraform init \
    -backend-config="key=dev/vpc.tfstate" \
    -backend-config="bucket=dcube-terraform-state" \
    -backend-config="region=us-west-2" \
    -backend-config="dynamodb_table=terraform-state-lock" \
    -var-file=../../vars/infra/dev/vpc.tfvars

terraform apply -var-file=../../vars/infra/dev/vpc.tfvars

terraform destroy \
    -backend-config="key=dev/vpc.tfstate" \
    -backend-config="bucket=dcube-terraform-state" \
    -backend-config="region=us-west-2" \
    -backend-config="dynamodb_table=terraform-state-lock" \
    -var-file=../../vars/infra/dev/vpc.tfvars

#### VPC

cd into the `infra/vpc` directory and run the following commands:

1. Init Terraform in the directory `infra/vpc`

```
terraform init
```
2. To preview the changes in code

```
terraform plan -var-file=../../vars/infra/dev/vpc.tfvars
```
3. To apply the changes

```
terraform apply -var-file=../../vars/infra/dev/vpc.tfvars
```
4. To destroy the resources created using the code

```
terraform destroy -var-file=../../vars/infra/dev/vpc.tfvars
```

#### Jenkins Controller

cd into the `infra/jenkins-controller` directory and run the following commands:

1. Init Terraform in the directory `infra/jenkins-controller`

```
terraform init
```
2. To preview the changes in code

```
terraform plan -var-file=../../vars/infra/dev/jenkins-controller.tfvars
```
3. To apply the changes

```
terraform apply -var-file=../../vars/infra/dev/jenkins-controller.tfvars
```
4. To destroy the resources created using the code

```
terraform destroy -var-file=../../vars/infra/dev/jenkins-controller.tfvars
```

#### Jenkins Agent

cd into the `infra/jenkins-agent` directory and run the following commands:

1. Init Terraform in the directory `infra/jenkins-agent`

```
terraform init
```
2. To preview the changes in code

```
terraform plan -var-file=../../vars/infra/dev/jenkins-agent.tfvars
```
3. To apply the changes

```
terraform apply -var-file=../../vars/infra/dev/jenkins-agent.tfvars
```
4. To destroy the resources created using the code

```
terraform destroy -var-file=../../vars/infra/dev/jenkins-agent.tfvars
```

#### Nexus

cd into the `infra/nexus` directory and run the following commands:

1. Init Terraform in the directory `infra/nexus'

```
terraform init
```
2. To preview the changes in code

```
terraform plan -var-file=../../vars/infra/dev/nexus.tfvars
```
3. To apply the changes

```
terraform apply -var-file=../../vars/infra/dev/nexus.tfvars
```
4. To destroy the resources created using the code

```
terraform destroy -var-file=../../vars/infra/dev/nexus.tfvars
```

#### Prometheus

cd into the `infra/prometheus` directory and run the following commands:

1. Init Terraform in the directory `infra/prometheus'

```
terraform init
```
2. To preview the changes in code

```
terraform plan -var-file=../../vars/infra/dev/prometheus.tfvars
```
3. To apply the changes

```
terraform apply -var-file=../../vars/infra/dev/prometheus.tfvars
```
4. To destroy the resources created using the code

```
terraform destroy -var-file=../../vars/infra/dev/prometheus.tfvars
```

#### Backend

cd into the `infra/backend` directory and run the following commands:

1. Init Terraform in the directory `infra/backend'

```
terraform init
```
2. To preview the changes in code

```
terraform plan -var-file=../../vars/infra/dev/backend.tfvars
```
3. To apply the changes

```
terraform apply -var-file=../../vars/infra/dev/backend.tfvars
```
4. To destroy the resources created using the code

```
terraform destroy -var-file=../../vars/infra/dev/backend.tfvars
```

#### ECR

cd into the `infra/ecr` directory and run the following commands:

1. Init Terraform in the directory `infra/backend'

```
terraform init
```
2. To preview the changes in code

```
terraform plan -var-file=../../vars/infra/dev/ecr.tfvars
```
3. To apply the changes

```
terraform apply -var-file=../../vars/infra/dev/ecr.tfvars
```
4. To destroy the resources created using the code

```
terraform destroy -var-file=../../vars/infra/dev/ecr.tfvars
```

#### Consul

cd into the `apps/consul` directory and run the following commands:

1. Init Terraform in the directory `infra/nexus'

```
terraform init
```
2. To preview the changes in code

```
terraform plan -var-file=../../vars/apps/dev/consul.tfvars
```
3. To apply the changes

```
terraform apply -var-file=../../vars/apps/dev/consul.tfvars
```
4. To destroy the resources created using the code

```
terraform destroy -var-file=../../vars/apps/dev/consul.tfvars
```