
```markdown
# ☁️ CloudOps Portfolio — AWS, Terraform, Ansible, Docker, Kubernetes

> A hands-on DevOps/Cloud Operations engineering portfolio demonstrating real-world infrastructure provisioning, CI/CD pipelines, and cloud-native deployments.

---

## 📁 Project 1 — Terraform: VPC + EC2 + CloudWatch on AWS

### 📌 Overview

This project provisions a complete AWS infrastructure environment using Terraform (Infrastructure as Code). It includes a custom Virtual Private Cloud (VPC), an EC2 compute instance, and CloudWatch monitoring — all defined, versioned, and deployed from code.

---

### 🏗️ Architecture

```
┌─────────────────────────────────────┐
│         AWS Account                 │
├─────────────────────────────────────┤
│  VPC (10.0.0.0/16)                 │
│  ├─ Public Subnet (10.0.1.0/24)    │
│  │  └─ EC2 Instance                │
│  └─ CloudWatch Alarms & Logs       │
└─────────────────────────────────────┘
```

### 🛠️ Technologies

- **Terraform**: Infrastructure provisioning
- **AWS**: VPC, EC2, CloudWatch
- **Language**: HCL2

### 📋 Prerequisites

- AWS Account with IAM credentials
- Terraform >= 1.0
- AWS CLI configured

### 🚀 Quick Start

```bash
cd project-1-terraform-vpc
terraform init
terraform plan
terraform apply
```

### 📝 Key Files

- `main.tf` — VPC and EC2 configuration
- `variables.tf` — Input variables
- `outputs.tf` — Output values
- `terraform.tfvars` — Variable assignments
```
---

### 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| Terraform | Infrastructure as Code (IaC) |
| AWS VPC | Isolated network environment |
| AWS EC2 | Virtual compute instance |
| AWS CloudWatch | Monitoring & alerting |
| Git + GitHub | Version control & portfolio |

---

### 📂 File Structure

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

## 📁 Project 2 — Jenkins CI/CD Pipeline on Kubernetes (AWS EKS)

### 📌 Overview

This project deploys Jenkins on an AWS EKS cluster and sets up a CI/CD pipeline that automatically pulls code from GitHub, runs a build stage, and executes a deployment stage — all orchestrated through Kubernetes.

---

### 🏗️ Architecture

---

### 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| AWS EKS | Managed Kubernetes cluster |
| eksctl | EKS cluster provisioning CLI |
| kubectl | Kubernetes resource management |
| Jenkins | CI/CD automation server |
| Kubernetes Deployment | Jenkins pod orchestration |
| Kubernetes LoadBalancer | Public access to Jenkins UI |
| GitHub | Source code repository |

---

### 📂 File Structure

---

### 🚀 How to Deploy

**Prerequisites:**
- AWS CLI configured (`aws configure`)
- eksctl installed
- kubectl installed

**Steps:**

```bash
# 1. Create EKS cluster
eksctl create cluster \
  --name cloudops-jenkins \
  --region us-east-1 \
  --nodegroup-name jenkins-nodes \
  --node-type t3.medium \
  --nodes 2 \
  --managed

# 2. Connect kubectl to cluster
aws eks update-kubeconfig --region us-east-1 --name cloudops-jenkins

# 3. Create namespace and deploy Jenkins
kubectl create namespace jenkins
kubectl apply -f jenkins-deployment.yaml
kubectl apply -f jenkins-service.yaml

# 4. Get Jenkins URL
kubectl get svc -n jenkins

# 5. Get initial admin password
kubectl exec -n jenkins $(kubectl get pods -n jenkins \
  -o jsonpath="{.items[0].metadata.name}") \
  -- cat /var/jenkins_home/secrets/initialAdminPassword

# 6. Destroy when done
eksctl delete cluster --name cloudops-jenkins --region us-east-1
```

---

### 📤 Outputs

| Output | Description |
|--------|-------------|
| LoadBalancer URL | Public Jenkins UI endpoint on port 80 |
| Jenkins Version | 2.555.1 |

---

### 🔐 Security Notes

- Jenkins is exposed via HTTP LoadBalancer — for production, use HTTPS
- Always destroy the EKS cluster after use to avoid charges (~$0.30/hour)

---

### 📌 Key Learnings

- Provisioning and managing AWS EKS cluster with eksctl
- Deploying applications on Kubernetes using Deployment and Service manifests
- Exposing Kubernetes services via AWS LoadBalancer
- Setting up Jenkins from scratch on Kubernetes
- Creating and running a multi-stage CI/CD pipeline connected to GitHub
- Managing kubectl context and kubeconfig on Windows

---

## 🗺️ Portfolio Roadmap

| # | Project | Status |
|---|---------|--------|
| 1 | Terraform: VPC + EC2 + CloudWatch | ✅ Complete |
| 2 | Jenkins on Kubernetes CI/CD | ✅ Complete |
| 3 | CI/CD + DevSecOps + Kubernetes on AWS EKS | 🔜 Planned |
| 4 | Ansible Configuration Management | 🔜 Planned |
| 5 | Docker + Microservices | 🔜 Planned |

---

## 👤 Author

**Ishwar** — Systems Administrator transitioning into DevOps/SRE  
📍 Malaysia | 🔧 Red Hat Virtualization · Zabbix · Grafana · AWS · Terraform · Kubernetes

---

*This portfolio is actively being built. Each project reflects real hands-on work.*