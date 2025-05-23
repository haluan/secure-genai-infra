# Secure Infrastructure for GenerativeAI on Azure

This repository provides Terraform modules that build a hardened Azure landing zone tailored for GenerativeAI workloads.

## Architecture

Terraform provisions these core resources:

- **Resource Group**: single point of lifecycle management for every component.
- **Virtual Network (VNet)**: private, segmented network for east‑west traffic between services.
- **AzureOpenAI Service**: fully managed deployment surface for large‑language models.
- **AzureKeyVault**: encrypted store for secrets, keys, and certificates consumed by the stack.

## Prerequisites

- Terraform ≥ v1.0
- AzureCLI
- Active Azure subscription with sufficient quotas

## QuickStart

1. **Clone the repo**

   ```bash
   git clone https://github.com/your-username/secure-genai-infra.git
   cd secure-genai-infra
   ```

2. **Configure variables**

   Create or update `terraform.tfvars`:

   ```hcl
   resource_group_name     = "genai-app-rg"
   location                = "East US"
   vnet_name               = "genai-vnet"
   vnet_address_space      = ["10.0.0.0/16"]
   openai_name             = "genai-openai"
   openai_sku              = "S0"
   openai_custom_subdomain = "genaiapp"
   key_vault_name          = "genai-kv"
   tenant_id               = "<your-tenant-id>"

   tags = {
     environment = "production"
     project     = "genai-apps"
   }
   ```

3. **Initialize Terraform**

   ```bash
   terraform init
   ```

4. **Review the execution plan**

   ```bash
   terraform plan
   ```

5. **Apply**

   ```bash
   terraform apply
   ```

## CleanUp

Remove all deployed resources:

```bash
terraform destroy
```

## Contributing

Issues and pull requests are welcome!

## License

MIT:see [`LICENSE`](https://opensource.org/license/mit) for details.
