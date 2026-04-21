# cloudops-portfolio
Cloud Operations Engineering Portfolio — AWS, Terraform, Ansible, Docker, Kubernetes

---

### 🚀 How to Deploy

**Prerequisites:**
- Terraform >= 1.0 installed
- AWS CLI configured (`aws configure`)
- IAM user with EC2, VPC, CloudWatch permissions

**Steps:**

```bash
# 1. Clone the repo
git clone https://github.com/Ishwarsanthiya/cloudops-portfolio.git
cd cloudops-portfolio

# 2. Create your own terraform.tfvars
cp terraform.tfvars.example terraform.tfvars
# Edit terraform.tfvars with your AWS region, key pair, etc.

# 3. Initialise Terraform
terraform init

# 4. Preview the plan
terraform plan

# 5. Apply the infrastructure
terraform apply

# 6. Destroy when done
terraform destroy
```

---

### 📤 Outputs

| Output | Description |
|--------|-------------|
| `website_url` | Public IP of the EC2 instance |

---

### 🔐 Security Notes

- `terraform.tfstate` and `terraform.tfvars` are excluded from version control via `.gitignore`
- Never commit AWS credentials or state files to a public repository
- IAM least-privilege principle should be applied to the deploying user

---

### 📌 Key Learnings

- Provisioning AWS infrastructure end-to-end with Terraform
- Managing provider versions with `.terraform.lock.hcl`
- Structuring reusable Terraform projects with variables and outputs
- Securing sensitive files with `.gitignore` best practices
- Git history rewriting with `filter-branch` to remove accidentally committed binaries

---

## 🗺️ Portfolio Roadmap

| # | Project | Status |
|---|---------|--------|
| 1 | Terraform: VPC + EC2 + CloudWatch | ✅ Complete |
| 2 | Jenkins on Kubernetes CI/CD | 🔄 In Progress |
| 3 | CI/CD + DevSecOps + Kubernetes on AWS EKS | 🔜 Planned |
| 4 | Ansible Configuration Management | 🔜 Planned |
| 5 | Docker + Microservices | 🔜 Planned |

---

## 👤 Author

**Ishwar** — Systems Administrator transitioning into DevOps/SRE  
📍 Malaysia | 🔧 Red Hat Virtualization · Zabbix · Grafana · AWS · Terraform · Kubernetes

---

*This portfolio is actively being built. Each project reflects real hands-on work.*