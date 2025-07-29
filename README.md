# Terraform AWS EKS Cluster

![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)

Infraestrutura como código para provisionamento de clusters EKS na AWS utilizando Terraform, com configurações para alta disponibilidade e segurança.

## 🌐 Arquitetura Principal

![Diagrama EKS](https://raw.githubusercontent.com/Raphaelbarlem/terraform_eks/main/docs/eks-architecture.png) *(adicione um diagrama real posteriormente)*

## 🛠️ Componentes Provisionados

| Módulo                | Descrição                                  | Arquivo de Configuração          |
|-----------------------|-------------------------------------------|----------------------------------|
| EKS Cluster           | Cluster Kubernetes gerenciado             | `modules/eks/cluster.tf`         |
| VPC                   | Rede isolada com subnets públicas/privadas| `modules/vpc/main.tf`            |
| IAM Roles             | Permissões para nodes e aplicações        | `modules/iam/roles.tf`           |
| Node Groups           | Workers autoescaláveis                    | `modules/node_groups/spot.tf`    |
| Add-ons               | CoreDNS, KubeProxy, VPC-CNI               | `addons/`                       |

## 🚀 Como Usar

### Pré-requisitos
- Terraform 1.5+
- AWS CLI configurada
- kubectl
- permissões IAM adequadas

### Deploy Completo
```bash
terraform init
terraform plan -out=tfplan
terraform apply tfplan

📂 Estrutura do Projeto
text
terraform_eks/
├── modules/              # Módulos reutilizáveis
│   ├── eks/              # Configurações do cluster
│   ├── vpc/              # Rede e subnets
│   └── iam/              # Políticas de acesso
├── environments/         # Ambientes separados (prod/stage)
│   ├── prod/             
│   └── staging/          
├── addons/               # Configurações de add-ons EKS
└── examples/             # Exemplos de uso
