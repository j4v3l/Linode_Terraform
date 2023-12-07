
# Linode VPS Deployment Using Terraform

---

## Warning / Disclaimer

> :warning: **Deploying or modifying infrastructure may incur costs.**
>
> This project automates the creation of Linode VPS instances. Be aware of potential costs associated with the deployment of cloud resources.
>
> **Use at your own risk.**
>
> Ensure that Terraform is installed and configured correctly before running this project. This project is provided as-is and is not guaranteed to work in all environments. The author is not responsible for any damages or losses caused by the use of this project.

---

## Description

This Terraform project automates the deployment of VPS instances on Linode. It allows dynamic input for image selection and uses a modular approach for easy customization and scalability.

## Project Structure

```plaintext

📁 Linode_Terraform

├── 📁 modules

│ ├── 📁 vps

│ │ ├── 📄 main.tf

│ │ ├── 📄 variables.tf

│ │ └── 📄 outputs.tf

├── 📄 main.tf

├── 📄 variables.tf

├── 📄 terraform.tfvars

├── 📄 outputs.tf

├── 📄 terraform_init.sh (optional)

├── 📄 terraform_apply.sh (optional)

├── 📄 terraform_destroy.sh (optional)

└── 📄 README.md

```

# How to Run the Terraform Project

This document provides detailed instructions on how to run the Linode VPS deployment using Terraform in the `Linode_Terraform`.

## Standard Method

1. **Navigate to the Project Directory:**

Open a terminal and navigate to the directory where the project is cloned.

```terraform
cd path_to_directory/Linode_Terraform
```
  
2. **Initialize Terraform:**

Run the `terraform init` command to initialize Terraform.

```terraform
terraform init
```

3. **Run Terraform Plan:**

Run the `terraform plan` command to view the execution plan.

```terraform
terraform plan
```

4. **Run Terraform Apply:**

Run the `terraform apply` command to apply the changes.

```terraform
terraform apply
```

5. **Run Terraform Destroy:**

Run the `terraform destroy` command to destroy the resources.

```terraform
terraform destroy
```
