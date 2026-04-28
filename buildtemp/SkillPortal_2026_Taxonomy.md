# Skill Portal — 2026 Job Market Skill Taxonomy

**Version:** 1.0  
**Authored:** April 2026  
**Purpose:** Role-based skill definitions for the Skill Portal Web project. Each role contains skill categories, individual skills, and sub-skills where a skill is broad enough to require decomposition. Designed to support proficiency scoring (1–5 scale recommended) and composite role scoring.

---

## Proficiency Scale Reference

| Level | Label | Description |
|---|---|---|
| 1 | Awareness | Knows the concept exists; can describe it at a high level |
| 2 | Foundational | Can execute with guidance; has applied it in limited scope |
| 3 | Practitioner | Works independently; applies in real environments regularly |
| 4 | Advanced | Deep working knowledge; can design, troubleshoot, and guide others |
| 5 | Expert | Authoritative; designs systems, sets standards, mentors others at this skill |

---

## Scoring Notes

- Each skill carries an equal default weight within its category unless overridden.
- Cross-role skills (marked with `[SHARED]`) appear in multiple roles; proficiency is portable.
- Sub-skills aggregate to parent skill score (average unless weighted).
- Role Score = weighted average of category scores.

---

---

# ROLE 1: Azure Cloud Engineer

**Role Summary:** Designs, deploys, and operates cloud infrastructure on Microsoft Azure. Responsible for compute, networking, identity, storage, IaC, and observability at enterprise scale.

---

## Category 1.1 — Azure Identity & Security

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Microsoft Entra ID (Azure AD)** | User/Group Management · RBAC · Conditional Access · MFA · SSO/SAML/OIDC · Managed Identities · App Registrations · B2C vs B2B | Core to every Azure deployment |
| **Azure Key Vault** | Secrets Management · Certificate Management · Key Rotation · Access Policies vs RBAC · Private Link Integration | `[SHARED]` |
| **Azure Policy** | Policy Definitions · Initiatives · Compliance Reporting · Remediation Tasks · Policy-as-Code | Governance critical |
| **Microsoft Defender for Cloud** | Security Posture (CSPM) · Workload Protection (CWPP) · Threat Detection · Regulatory Compliance Dashboards | |
| **Azure Blueprints / Landing Zones** | Blueprint Definitions · Landing Zone Architecture · Management Group Structure · Policy Inheritance | |
| **Zero Trust Architecture** | Identity Verification · Least Privilege · Network Micro-segmentation · Continuous Validation | 2026 market expectation |

---

## Category 1.2 — Azure Networking

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Virtual Network (VNet)** | Address Space Design · Subnetting · Peering (VNet-to-VNet) · Hub-Spoke Topology · Service Endpoints | `[SHARED]` |
| **Azure Firewall** | Firewall Policy · DNAT/SNAT Rules · Threat Intelligence · Premium SKU (IDPS) | |
| **Azure Application Gateway** | WAF v2 · URL-Based Routing · SSL Termination · Autoscaling | |
| **Azure Front Door** | Global Routing · CDN Integration · WAF Policies · Health Probes · Custom Domains | |
| **Private Link / Private Endpoints** | PaaS Service Isolation · DNS Private Zones · Network Security Groups | Critical for enterprise security |
| **VPN Gateway / ExpressRoute** | Site-to-Site VPN · Point-to-Site VPN · ExpressRoute Circuit · Hybrid Connectivity | |
| **Azure DNS** | Public Zones · Private Zones · DNS Resolver · Split-Horizon DNS | |
| **Azure DDoS Protection** | Standard Plan · Diagnostic Logs · Alert Configuration | |
| **Network Security Groups (NSG)** | Inbound/Outbound Rules · Flow Logs · Application Security Groups | |
| **Azure Load Balancer** | Internal vs Public · Backend Pools · Health Probes · SKU Selection (Standard) | |
| **Azure NAT Gateway** | Outbound SNAT · Availability Zones · Integration with Subnets | |

---

## Category 1.3 — Azure Compute

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Azure Virtual Machines** | VM Sizing · Availability Sets · Availability Zones · Extensions · Custom Images · Scale Sets · Spot VMs | `[SHARED]` |
| **Azure VM Scale Sets (VMSS)** | Autoscale Profiles · Custom Scripts · Rolling Upgrades · Flexible Orchestration | |
| **Azure Kubernetes Service (AKS)** | Cluster Provisioning · Node Pools · Ingress Controllers · RBAC · Workload Identity · AKS Networking (CNI/Overlay) · Cluster Upgrades · Monitoring Integration | `[SHARED]` Deep skill |
| **Azure Container Apps** | Environment Setup · Dapr Integration · Scale-to-Zero · Ingress · Managed Certificates | |
| **Azure Container Instances (ACI)** | Sidecar Patterns · Init Containers · Private Registry Pull | |
| **Azure App Service** | Web Apps · API Apps · Deployment Slots · Custom Domains/TLS · Scaling Plans · VNet Integration | `[SHARED]` |
| **Azure Functions** | Trigger Types · Durable Functions · Consumption vs Premium Plan · Cold Start Optimization | `[SHARED]` |
| **Azure Virtual Desktop (AVD)** | Host Pool Types · FSLogix · Image Management · RDP Shortpath | |
| **Azure Batch** | Pool Configuration · Task Scheduling · Integration with Storage | |
| **Azure Arc** | Arc-Enabled Servers · Arc-Enabled Kubernetes · GitOps with Arc · Policy at Arc Scale | Hybrid-critical |

---

## Category 1.4 — Azure Storage & Data

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Azure Blob Storage** | Access Tiers (Hot/Cool/Archive) · Lifecycle Policies · Versioning · Soft Delete · Static Website Hosting · SAS Tokens | `[SHARED]` |
| **Azure Files** | SMB/NFS Shares · Azure File Sync · Premium vs Standard | |
| **Azure SQL Database** | Service Tiers · Elastic Pools · Geo-Replication · Backup/PITR · Private Endpoint | |
| **Azure Cosmos DB** | API Selection (SQL/Mongo/Gremlin) · Consistency Levels · Partitioning · Change Feed | |
| **Azure Data Lake Storage Gen2** | ABFS · ACL vs RBAC · Integration with Synapse/Databricks | |
| **Azure Cache for Redis** | Cache Patterns · Clustering · Persistence · TLS | |
| **Azure Service Bus** | Queues vs Topics · Message Sessions · Dead-Letter Queue · Premium SKU | |
| **Azure Event Hubs** | Partitions · Consumer Groups · Capture · Kafka Protocol Compatibility | `[SHARED]` |
| **Azure Event Grid** | Event Subscriptions · Custom Topics · Dead-Letter · Filtering | |

---

## Category 1.5 — Azure App Services & Integration

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Azure API Management (APIM)** | Policies · Developer Portal · Rate Limiting · OAuth/JWT Validation · Versioning · Self-Hosted Gateway | `[SHARED]` |
| **Azure Logic Apps** | Standard vs Consumption · Connectors · Stateful vs Stateless | |
| **Azure App Configuration** | Feature Flags · Key-Value Store · Sentinel Keys · Integration with App Service/AKS | `[SHARED]` |
| **Azure Static Web Apps** | GitHub/ADO Integration · Managed Functions Backend · Custom Auth | `[SHARED]` |

---

## Category 1.6 — Infrastructure as Code & Automation

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Azure Bicep** | Module Design · Parameter Files · Deployment Stacks · What-If · Registry | Primary IaC for Azure |
| **Azure Resource Manager (ARM)** | Template Structure · Linked Templates · Deployment Modes | Legacy but relevant |
| **Terraform (Azure Provider)** | azurerm Provider · State Management · Module Design · Remote Backend · Workspaces | `[SHARED]` |
| **Azure CLI** | Resource Management · Scripting · JMESPath Queries | `[SHARED]` |
| **PowerShell / Az Module** | Az PowerShell · DSC · Runbooks | `[SHARED]` |
| **Azure DevOps Pipelines** | YAML Pipelines · Service Connections · Library Groups · Environments · Approvals | `[SHARED]` |
| **GitHub Actions (Azure)** | OIDC Authentication · Workflow Design · Reusable Workflows | `[SHARED]` |

---

## Category 1.7 — Azure Monitoring & Observability

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Azure Monitor** | Metrics · Alerts · Action Groups · Diagnostic Settings · Activity Log | `[SHARED]` |
| **Log Analytics Workspace** | KQL Queries · Table Schema · Workspace Design · Data Retention · Cost Management | `[SHARED]` |
| **Application Insights** | SDK Integration · Live Metrics · Distributed Tracing · Dependency Tracking · Availability Tests | `[SHARED]` |
| **Azure Monitor Agent (AMA) & DCRs** | Data Collection Rules · DCR Association · Migration from MMA/OMS | |
| **Azure Workbooks** | Template Design · Parameters · Linked Resources · Sharing | `[SHARED]` |
| **Azure Managed Grafana** | Dashboard Design · Data Source Config · Alerting · RBAC | `[SHARED]` |
| **KQL (Kusto Query Language)** | Basic Queries · Joins · Aggregations · Time Series · Rendering · Performance Optimization | `[SHARED]` Deep skill |
| **Azure Advisor** | Recommendations Review · Score Improvement · Cost Optimization | |
| **Azure Service Health** | Service Issues · Planned Maintenance · Health Alerts | |
| **Cost Management + Billing** | Budgets · Alerts · Cost Analysis · Tagging Strategy · Reservations vs PAYG | |

---

## Category 1.8 — Azure Governance & Operations

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Management Groups & Subscriptions** | Hierarchy Design · Policy Inheritance · RBAC Inheritance | |
| **Azure Lighthouse** | Delegated Resource Management · Partner Center · Cross-Tenant Monitoring | |
| **Azure Update Manager** | Update Assessments · Maintenance Configurations · Patch Orchestration | |
| **Azure Backup** | Recovery Services Vault · Backup Policies · MARS Agent · Cross-Region Restore | |
| **Azure Site Recovery (ASR)** | Replication · Failover / Failback · DR Planning | |
| **Azure Migrate** | Discovery · Assessment · Server Migration · Database Migration Service | |
| **Azure Landing Zone Design** | CAF (Cloud Adoption Framework) · Management · Connectivity · Identity Subscriptions | |

---

---

# ROLE 2: AWS Cloud Engineer

**Role Summary:** Designs, deploys, and operates cloud infrastructure on Amazon Web Services. Parallel track to Azure Cloud Engineer — positioned for multi-cloud awareness or org-specific AWS environment.

---

## Category 2.1 — AWS Identity & Security

| Skill | Sub-Skills | Notes |
|---|---|---|
| **AWS IAM** | Users/Groups/Roles · Policies (Managed vs Inline) · Permission Boundaries · SCP (Service Control Policies) · IAM Conditions | Core |
| **AWS Organizations & SCPs** | Organizational Units · Policy Inheritance · Consolidated Billing | |
| **AWS Secrets Manager** | Secret Rotation · Cross-Account Access · Lambda Integration | |
| **AWS Key Management Service (KMS)** | CMKs · Key Policies · Envelope Encryption · Multi-Region Keys | |
| **AWS Security Hub** | Findings Aggregation · CIS Benchmark · Standards Compliance | |
| **Amazon GuardDuty** | Threat Detection · Finding Types · Integration with Security Hub | |
| **AWS Shield / WAF** | Shield Standard vs Advanced · WAF Rules · Managed Rule Groups · Rate Limiting | |
| **AWS Config** | Config Rules · Conformance Packs · Remediation Actions | |
| **Zero Trust on AWS** | Verified Access · PrivateLink · IAM Conditions · VPC Endpoints | 2026 expectation |

---

## Category 2.2 — AWS Networking

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Amazon VPC** | CIDR Design · Subnets (Public/Private/Isolated) · Route Tables · NAT Gateway · Internet Gateway | Core |
| **AWS Transit Gateway** | TGW Attachments · Route Tables · VPN Integration · Multi-Account Hub-Spoke | |
| **AWS Direct Connect** | Virtual Interfaces · LAGs · Resiliency Patterns | |
| **Amazon CloudFront** | Distributions · Behaviors · Origin Groups · Lambda@Edge · Cache Policies | |
| **AWS Global Accelerator** | Endpoint Groups · Traffic Dials · Health Checks | |
| **Elastic Load Balancing (ELB)** | ALB (Application) · NLB (Network) · GLB (Gateway) · Target Groups · Listener Rules | |
| **Amazon Route 53** | Hosted Zones · Routing Policies · Health Checks · Private DNS | |
| **VPC Endpoints** | Interface Endpoints · Gateway Endpoints · PrivateLink | |
| **AWS Network Firewall** | Stateful/Stateless Rules · Suricata Rules · Centralized Deployment | |
| **Security Groups & NACLs** | Stateful vs Stateless · Rule Evaluation · VPC Flow Logs | |

---

## Category 2.3 — AWS Compute

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Amazon EC2** | Instance Types · AMIs · Launch Templates · Auto Scaling Groups · Spot/Reserved/Savings Plans · Placement Groups | Core |
| **AWS Lambda** | Trigger Types · Layers · Container Images · Provisioned Concurrency · SnapStart · Power Tuning | |
| **Amazon ECS (Elastic Container Service)** | Task Definitions · Fargate vs EC2 · Service Discovery · Capacity Providers | |
| **Amazon EKS (Elastic Kubernetes Service)** | Managed Node Groups · Fargate Profiles · EKS Add-ons · IRSA · Karpenter · Managed Add-ons | Deep skill |
| **AWS App Runner** | Service Configuration · Deployment Pipelines · VPC Connector | |
| **AWS Batch** | Compute Environments · Job Queues · Multi-Node Jobs | |
| **Amazon Lightsail** | VPS Management · Blueprints · Managed Databases | Awareness level for this role |
| **AWS Elastic Beanstalk** | Environment Types · Platform Versions · Rolling Deployments | Legacy awareness |

---

## Category 2.4 — AWS Storage & Data

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Amazon S3** | Bucket Policies · Versioning · Lifecycle Rules · Object Lock · Replication · Intelligent-Tiering · S3 Select | Core |
| **Amazon EBS** | Volume Types (gp3/io2) · Snapshots · Encryption · Multi-Attach | |
| **Amazon EFS** | Access Points · Performance Modes · Throughput Modes · Cross-AZ | |
| **Amazon RDS** | Engine Selection · Multi-AZ · Read Replicas · Parameter Groups · RDS Proxy | |
| **Amazon Aurora** | Serverless v2 · Global Database · Cluster Endpoints · Backtrack | |
| **Amazon DynamoDB** | Table Design · GSI/LSI · Streams · DAX · On-Demand vs Provisioned | |
| **Amazon ElastiCache** | Redis vs Memcached · Cluster Mode · Replication Groups | |
| **Amazon SQS** | Standard vs FIFO · Visibility Timeout · DLQ · Long Polling | |
| **Amazon SNS** | Topics · Subscriptions · Message Filtering · FIFO Topics | |
| **Amazon Kinesis** | Data Streams · Firehose · Analytics · Video Streams | |

---

## Category 2.5 — AWS Infrastructure as Code & Automation

| Skill | Sub-Skills | Notes |
|---|---|---|
| **AWS CloudFormation** | Template Structure · Stacks · StackSets · Change Sets · Drift Detection | |
| **AWS CDK (Cloud Development Kit)** | Constructs (L1/L2/L3) · App Structure · Synthesis · CDK Pipelines | Growing 2026 relevance |
| **Terraform (AWS Provider)** | aws provider · State Management · Module Registry · Workspaces | `[SHARED]` |
| **AWS CLI** | Resource Management · Profiles · Output Formatting | `[SHARED]` |
| **AWS Systems Manager** | Parameter Store · Session Manager · Run Command · Patch Manager · Automation Documents | |
| **AWS CodePipeline / CodeBuild / CodeDeploy** | Pipeline Structure · Build Specs · Deployment Strategies | `[SHARED]` |
| **GitHub Actions (AWS)** | OIDC with AWS · IRSA · Workflow Design | `[SHARED]` |

---

## Category 2.6 — AWS Monitoring & Observability

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Amazon CloudWatch** | Metrics · Alarms · Log Groups · Insights (Logs/Container/Lambda) · Dashboards · Composite Alarms | Core |
| **AWS X-Ray** | Traces · Service Maps · Annotations · Integration with Lambda/ECS | |
| **Amazon Managed Grafana** | Workspace · Data Sources · Dashboard Design | `[SHARED]` |
| **AWS CloudTrail** | Event History · Data Events · Insights · Multi-Region · S3 Integration | |
| **AWS Cost Explorer** | Cost Allocation Tags · Savings Plans · Rightsizing · Budgets | |
| **AWS Trusted Advisor** | Category Checks · Priority Recommendations | |

---

## Category 2.7 — AWS Governance & Multi-Account

| Skill | Sub-Skills | Notes |
|---|---|---|
| **AWS Control Tower** | Landing Zone · Account Factory · Guardrails · AFT (Account Factory for Terraform) | |
| **AWS Organizations** | OU Structure · SCPs · Tag Policies · Delegated Administrator | |
| **AWS Service Catalog** | Portfolio · Products · Constraints · Self-Service | |
| **AWS Backup** | Backup Plans · Vaults · Cross-Account · Cross-Region | |
| **AWS Well-Architected Framework** | Pillars (Operational Excellence · Security · Reliability · Performance · Cost · Sustainability) · Lens Reviews | `[SHARED]` |

---

---

# ROLE 3: Staff Engineer

**Role Summary:** Senior technical leader who operates across teams and systems. Delivers impact through architectural judgment, cross-team influence, technical direction, and force multiplication — not through direct management.

---

## Category 3.1 — Systems Thinking & Architecture

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Distributed Systems Design** | CAP Theorem · Consistency Models · Event-Driven Architecture · CQRS · Saga Pattern · Idempotency · Backpressure · Circuit Breaker | Separator between Senior and Staff |
| **Architecture Decision Making** | ADR (Architecture Decision Records) · Options Analysis · Tradeoff Framing · Reversibility Assessment · Blast Radius Thinking | Core Staff skill |
| **System Design (Large Scale)** | Capacity Planning · Load Estimation · Bottleneck Identification · Horizontal vs Vertical Scaling · Multi-Region Design | |
| **API Design** | REST Principles · GraphQL · gRPC · Versioning Strategies · Contract-First Design · API Gateway Patterns | `[SHARED]` |
| **Enterprise Architecture Fundamentals** | Domain-Driven Design (DDD) · Bounded Contexts · Event Storming · TOGAF ADM (lite) · Architecture Views (C4 Model) | |
| **Reliability Engineering** | SLI/SLO/SLA Design · Error Budgets · Chaos Engineering Concepts · Blast Radius · Toil Reduction | |
| **Security Architecture** | Defense in Depth · Threat Modeling (STRIDE) · Zero Trust Principles · Least Privilege Design | `[SHARED]` |

---

## Category 3.2 — Technical Communication & Documentation

| Skill | Sub-Skills | Notes |
|---|---|---|
| **RFC / Technical Proposal Writing** | Problem Statement · Option Analysis · Recommendation · Implementation Plan · Success Criteria | High-leverage Staff skill |
| **Architecture Documentation** | C4 Model Diagrams (Context/Container/Component/Code) · ADRs · Runbooks · Sequence Diagrams · Data Flow Diagrams | `[SHARED]` |
| **Technical Storytelling** | Translating Complexity for Executive Audiences · Outcome-Based Framing · Risk-Cost-Time Language | Differentiator |
| **Design Review Facilitation** | Pre-read Templates · Decision Recording · Consensus Building · Async Review Patterns | |
| **Docs-as-Code** | Markdown · Git-backed Docs · Static Site Generators (Docusaurus/MkDocs) · Versioning · Auto-generation | `[SHARED]` |
| **Presentation Design** | Stakeholder Deck Structure · Executive Summary · Narrative Arc · Data Visualization | |

---

## Category 3.3 — Cross-Team Leadership & Influence

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Stakeholder Management** | Stakeholder Mapping · Communication Cadence · Expectation Setting · No-Surprise Principle · Disagreement Protocols | Core Staff competency |
| **Technical Consensus Building** | Pre-alignment · Running Design Reviews · Handling Objections · Decision Escalation · Public Alignment | |
| **Engineering Culture & Standards** | Defining Coding/Architecture Standards · Golden Paths · Internal Developer Portal Advocacy · Tech Radar | |
| **Mentorship & Technical Development** | Senior Engineer Development · Code/Design Review Quality · Knowledge Sharing (Brown Bags, RFCs) | |
| **Cross-Functional Collaboration** | Working with Product/Security/Legal/Finance · Technical Translation · Dependency Management | |

---

## Category 3.4 — Execution & Delivery Oversight

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Initiative Framing & Scoping** | Problem Decomposition · MVP Definition · Milestone Design · Definition of Done · Success Metrics | |
| **Technical Risk Management** | Risk Identification · Mitigation vs Acceptance · Rollback Planning · Dependency Mapping | |
| **Delivery Guardrails** | Definition of Ready · Architectural Governance · Implementation Review | |
| **Technical Debt Management** | Debt Classification · Payback Strategy · Refactoring Patterns · Negotiating with Product | |
| **Incident Leadership** | Incident Commander Role · Blameless Post-Mortems · RCA Facilitation · Corrective Action Ownership | |

---

## Category 3.5 — Broad Technical Fluency

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Cloud Architecture (Multi-Cloud Awareness)** | Azure · AWS · GCP Basics · Cloud-Agnostic Patterns | `[SHARED]` |
| **Platform & Infrastructure Concepts** | IDP Concepts · Golden Paths · Service Mesh Basics · GitOps · FinOps | `[SHARED]` |
| **Observability & Monitoring** | MELT (Metrics/Events/Logs/Traces) · SLO Design · Dashboard Strategy · On-Call Design | `[SHARED]` |
| **Networking Fundamentals** | TCP/IP · DNS · TLS/mTLS · Load Balancing · CDN · BGP Basics | `[SHARED]` |
| **Database & Storage Patterns** | OLTP vs OLAP · Relational vs Document vs Graph vs Time-Series · Caching Patterns · Eventual Consistency | |
| **Software Development Lifecycle** | Git Workflows · CI/CD Pipeline Design · Testing Strategies · Feature Flags · Deployment Patterns (Blue/Green, Canary) | `[SHARED]` |
| **AI/ML Integration Awareness** | LLM Integration Patterns · RAG Concepts · AI Governance · Cost/Security Tradeoffs | `[SHARED]` |

---

## Category 3.6 — Strategic & Organizational Thinking

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Technical Roadmap Development** | Quarterly/Annual Planning · Capability Mapping · Dependency Sequencing · Make vs Buy Analysis | |
| **FinOps / Cloud Economics** | Cost Attribution · Tagging Strategy · Reservation Planning · Unit Economics | |
| **Build vs Buy vs Integrate Decisions** | Vendor Evaluation · OSS Assessment · Total Cost Modeling · Lock-in Analysis | |
| **Organizational Design Awareness** | Conway's Law · Team Topologies (Stream-Aligned/Platform/Enabling/Complicated Subsystem) · API-first Team Design | |

---

---

# ROLE 4: Platform Engineer

**Role Summary:** Builds and operates internal platforms that enable development teams to self-serve. Focuses on developer experience (DevEx), golden paths, CI/CD, IaC, container orchestration, observability infrastructure, and reducing cognitive load on application teams.

---

## Category 4.1 — Internal Developer Platform (IDP)

| Skill | Sub-Skills | Notes |
|---|---|---|
| **IDP Concepts & Architecture** | Platform as a Product · Golden Paths · Paved Roads · Self-Service Portals · Developer Cognitive Load Reduction | 2026 core concept |
| **Backstage (Spotify)** | Software Catalog · TechDocs · Scaffolder Templates · Plugins · Kubernetes Plugin | Leading IDP framework |
| **Service Catalog Design** | Service Ownership · Dependency Mapping · Maturity Scores · SLO Publication | |
| **Developer Portal Strategy** | Portal Architecture · Content Taxonomy · Discoverability · Adoption Metrics | |
| **Platform Team Topologies** | Platform-as-a-Product Model · Platform Roadmap · Internal Customer Interviews · Feedback Loops | |

---

## Category 4.2 — CI/CD & GitOps

| Skill | Sub-Skills | Notes |
|---|---|---|
| **GitHub** | Repository Management · Branch Strategy · PR Reviews · Code Owners | `[SHARED]` |
| **GitHub: Actions** | Workflow YAML · Reusable Workflows · Matrix Builds · Secrets Management · OIDC Authentication · Self-Hosted Runners | `[SHARED]` |
| **GitHub: Advanced Security** | Code Scanning (CodeQL) · Secret Scanning · Dependabot · Security Overview | |
| **GitHub: Projects** | Kanban Boards · Automation · Roadmap Views · Status Fields | |
| **GitHub: Packages** | Container Registry · npm/Maven/NuGet Packages · Package Visibility | |
| **Azure DevOps Pipelines** | YAML Pipelines · Classic Pipelines · Multi-Stage · Service Connections · Environments · Deployment Gates | `[SHARED]` |
| **Azure DevOps: Repos** | Branch Policies · Pull Request Templates · Protected Branches | |
| **Azure DevOps: Artifacts** | Feed Management · Upstream Sources · Retention Policies | |
| **Azure DevOps: Boards** | Backlogs · Sprint Planning · Queries · Reporting | |
| **GitOps (Flux / ArgoCD)** | Reconciliation Loop · Kustomize · Helm Integration · Multi-Cluster · RBAC | |
| **Pipeline Design Patterns** | Shift-Left Testing · Gates & Approvals · Feature Branch Deploys · Trunk-Based Development | |
| **Release Management** | Deployment Strategies (Blue/Green · Canary · Ring) · Feature Flags · Rollback Design | |

---

## Category 4.3 — Infrastructure as Code

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Terraform** | Provider Configuration · Resource Lifecycle · State Management (Remote) · Modules · Workspaces · Terragrunt · `terraform plan/apply` · Drift Detection | `[SHARED]` Deep skill |
| **Terraform: Testing** | Terratest · Checkov · tflint · Pre-commit Hooks | |
| **Azure Bicep** | Module Registry · Deployment Stacks · What-If · Scope (Subscription/RG/Tenant) | `[SHARED]` |
| **Pulumi** | Awareness level · TypeScript/Python SDKs · State Management | Growing relevance |
| **Ansible** | Playbooks · Roles · Inventory · Vault · Dynamic Inventory · AWX/AAP | Hybrid infra critical |
| **Crossplane** | Composite Resources · Providers · Managed Resources · GitOps Integration | Emerging 2026 |
| **Policy as Code** | OPA (Open Policy Agent) · Rego Language · Conftest · Azure Policy · Sentinel | |

---

## Category 4.4 — Container & Kubernetes Platform

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Docker** | Dockerfile Authoring · Multi-Stage Builds · Image Optimization · Compose · Security Scanning | `[SHARED]` |
| **Kubernetes: Core** | Pod/Deployment/Service/Ingress · ConfigMaps · Secrets · Namespaces · RBAC · Resource Quotas · LimitRanges | `[SHARED]` |
| **Kubernetes: Workloads** | StatefulSets · DaemonSets · Jobs/CronJobs · HPA/VPA · PodDisruptionBudgets | |
| **Kubernetes: Networking** | CNI Plugins · Network Policies · Service Types · DNS · Ingress Controllers (NGINX/Traefik) | |
| **Kubernetes: Storage** | PV/PVC · StorageClasses · CSI Drivers · Volume Snapshots | |
| **Kubernetes: Security** | PodSecurity Admission · OPA Gatekeeper · Falco · Secrets Encryption at Rest · Workload Identity | |
| **Kubernetes: Operations** | Cluster Upgrades · Node Pool Management · Debugging (kubectl exec/logs/describe) · Resource Tuning | |
| **Helm** | Chart Authoring · Values Design · Repository Management · Helm Hooks · Library Charts | `[SHARED]` |
| **Kustomize** | Overlays · Bases · Patches · ConfigMap Generator | |
| **Service Mesh (Istio / Linkerd)** | Traffic Management · mTLS · Observability Integration · Circuit Breaking | Awareness→Practitioner |
| **Container Security** | Image Scanning (Trivy/Snyk) · SBOM Generation · Distroless Images · Non-Root Containers | |
| **Platform Engineering on AKS** | Workload Identity · AAD Pod Identity · CNI Overlay · Azure Policy for AKS | |

---

## Category 4.5 — Observability Platform Engineering

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Observability Strategy** | MELT Framework · SLI/SLO/SLA Design · Error Budget Policy · Observability-as-Code | |
| **Prometheus & Alertmanager** | Scrape Configuration · PromQL · Recording Rules · Alerting Rules · Remote Write | |
| **Grafana** | Dashboard Design · Data Sources · Alerting · Templating Variables · Annotations · Provisioning | `[SHARED]` |
| **OpenTelemetry (OTel)** | Instrumentation (Auto/Manual) · Collector Config · OTLP Protocol · Trace/Metric/Log Correlation | 2026 standard |
| **Azure Monitor (Platform Layer)** | Log Analytics Workspace Architecture · DCR Design · Diagnostic Settings at Scale · Alert Rule Governance | `[SHARED]` |
| **KQL** | Query Patterns · Joins · Summarize · Time Series · Anomaly Detection | `[SHARED]` |
| **Distributed Tracing** | Trace Context Propagation · Sampling Strategies · Jaeger/Zipkin/Tempo | |
| **Log Management** | Log Aggregation Design · Structured Logging Standards · Retention Strategy · Cost Management | |
| **On-Call & Runbook Design** | Runbook Templates · Alert Routing · Escalation Policies · PagerDuty/OpsGenie Integration | |

---

## Category 4.6 — Developer Experience (DevEx)

| Skill | Sub-Skills | Notes |
|---|---|---|
| **DORA Metrics** | Deployment Frequency · Lead Time for Changes · Change Failure Rate · Mean Time to Restore | |
| **Developer Productivity Tooling** | Local Dev Environments (devcontainers) · CLI Tooling · Scaffolding · Automation | |
| **Self-Service Infrastructure** | Infrastructure Vending · Account/Subscription Vending · Cost Guardrails · Quota Management | |
| **Platform API Design** | Internal API Standards · Platform Contracts · Versioning · Deprecation Policy | |
| **FinOps & Cost Visibility** | Showback/Chargeback Models · Cost Allocation Tags · Budget Alerts · Right-Sizing Tooling | `[SHARED]` |

---

---

# ROLE 5: AI Engineer

**Role Summary:** Designs and builds AI-powered systems, with emphasis on LLM integration, retrieval architectures, agent design, prompt engineering, and responsible deployment of AI in enterprise environments.

---

## Category 5.1 — LLM Fundamentals

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Large Language Model (LLM) Concepts** | Transformer Architecture (Awareness) · Tokenization · Context Window · Temperature/Top-P · Fine-tuning vs In-Context Learning · Hallucination Patterns | Foundation |
| **Prompt Engineering** | Zero/One/Few-Shot Prompting · Chain-of-Thought · System Prompt Design · Prompt Injection Defense · Output Structuring | Practitioner-level expectation |
| **Retrieval-Augmented Generation (RAG)** | Chunking Strategies · Embedding Models · Vector Search · Re-ranking · Hybrid Search · Context Window Management · Evals | Core 2026 skill |
| **LLM Evaluation** | Promptfoo · LangSmith Evals · RAGAS · Custom Eval Harnesses · Benchmark Design | Growing importance |
| **Model Selection** | GPT-4o · Claude Sonnet/Opus · Mistral · Llama 3 · Gemini · Cost/Latency/Quality Tradeoffs · On-Prem vs Cloud | |
| **Token Economics** | Token Counting · Cost Modeling · Latency Optimization · Streaming · Batching | |

---

## Category 5.2 — Azure AI Platform

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Azure OpenAI Service** | Deployment Types · API Usage · Rate Limit Management · PTU vs Consumption · Model Versioning | Core |
| **Azure AI Foundry** | Project Setup · Model Catalog · Prompt Flow · Evaluation · Deployment · Safety Filters | 2026 primary platform |
| **Azure AI Search** | Indexer Design · Semantic Ranking · Vector Search · Hybrid Search · Skillsets · Integrated Vectorization | `[SHARED]` |
| **Azure Document Intelligence** | Prebuilt Models · Custom Models · Layout API · Integration Patterns | |
| **Azure AI Language** | NER · Sentiment · Summarization · Custom Classification · CLU | |
| **Azure AI Vision** | Image Analysis · OCR · Face API · Custom Vision | |
| **Azure Machine Learning** | Workspace · Compute Clusters · Pipelines · Automated ML · Model Registry · Managed Online Endpoints | |
| **Microsoft Copilot Studio** | Topic Design · Custom Actions · Power Platform Connectors · Teams Integration · Generative Answers | `[SHARED]` |
| **Microsoft 365 Copilot Extensibility** | Graph Connectors · Copilot Agents (Teams Toolkit) · Plugin Design | |

---

## Category 5.3 — AI Development Frameworks & Tooling

| Skill | Sub-Skills | Notes |
|---|---|---|
| **LangChain / LangGraph** | Chain Design · LCEL · Agent Graphs · Memory Patterns · Tool Calling | |
| **LlamaIndex** | Data Connectors · Index Types · Query Engines · Agents · Observability | `[SHARED]` |
| **Semantic Kernel** | Kernel Setup · Plugins · Planners · Memory · .NET and Python SDK | Microsoft ecosystem |
| **OpenAI SDK (Python/JS)** | Chat Completions · Function Calling · Assistants API · Streaming · Embeddings API | |
| **Promptfoo** | Test Case Design · Provider Config · Assertion Types · CI Integration | `[SHARED]` |
| **LangSmith** | Tracing · Dataset Management · Evals · Monitoring · Feedback Collection | `[SHARED]` |
| **N8N / Workflow Automation** | AI Node Integration · Webhook Triggers · Data Transformation · Credential Management | `[SHARED]` |
| **Vector Databases** | Pinecone · Qdrant · Weaviate · pgvector · Chroma · Index Design · Metadata Filtering | |

---

## Category 5.4 — Agentic AI & Multi-Agent Systems

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Agent Architecture Design** | ReAct Pattern · Plan-and-Execute · Tool Use Design · Agent State Management · Memory (Short/Long-Term) | 2026 leading skill |
| **Multi-Agent Orchestration** | AutoGen · CrewAI · LangGraph Multi-Agent · Agent Handoff · Supervisory Agents | |
| **Tool / Function Calling** | Schema Design · Input Validation · Error Handling · Tool Selection Strategy | |
| **Agent Observability** | Trace Capture · Step-Level Logging · Failure Analysis · Cost Per Run | |
| **Model Context Protocol (MCP)** | MCP Server Design · Tool Exposure · Resource Definitions · Integration Patterns | Emerging 2026 standard |

---

## Category 5.5 — AI Security, Governance & Ethics

| Skill | Sub-Skills | Notes |
|---|---|---|
| **AI Security** | Prompt Injection Defense · Jailbreak Mitigation · Input/Output Validation · PII Detection · Data Exfiltration Prevention | Critical enterprise skill |
| **Responsible AI** | Bias Awareness · Fairness Evaluation · Transparency · Human-in-the-Loop Design · AI Impact Assessment | |
| **Content Safety** | Azure Content Safety API · Harm Categories · Safety Filters · Custom Blocklists | |
| **AI Governance** | Model Versioning · Audit Trails · Access Control for AI Services · Usage Monitoring · Cost Guardrails | |
| **Data Privacy in AI** | PII Handling · Data Residency · Anonymization · GDPR/HIPAA Considerations for AI | |
| **AI System Testing** | Adversarial Testing · Red-Teaming · Regression Evals · A/B Testing Models | |

---

## Category 5.6 — MLOps & AI Infrastructure

| Skill | Sub-Skills | Notes |
|---|---|---|
| **MLOps Concepts** | Model Versioning · Feature Stores · Data Lineage · Model Drift · Retraining Pipelines | |
| **AI/ML Pipelines** | Azure ML Pipelines · Kubeflow · MLflow · Experiment Tracking | |
| **Model Deployment Patterns** | Online Endpoints · Batch Inference · A/B Deployment · Shadow Mode · Canary Releases | |
| **Embedding & Vector Management** | Embedding Model Selection · Chunking Strategy · Index Refresh · Incremental Updates | |
| **LLMOps** | Prompt Versioning · Model Swap Strategy · Cost Monitoring · Latency SLOs · Feedback Loops | Emerging 2026 |

---

## Category 5.7 — AI Application Development

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Python for AI** | Core Libraries (pandas, numpy) · Async Patterns · API Wrappers · FastAPI · Jupyter | `[SHARED]` |
| **TypeScript / JavaScript for AI** | Node.js AI SDKs · Streaming Responses · React AI Components · Vercel AI SDK | `[SHARED]` |
| **API Integration Patterns** | Webhook Ingestion · Event-Driven AI · Background Processing · Queue-Based Inference | |
| **Document Processing** | PDF Extraction · OCR Pipelines · HTML Parsing · Chunking Strategies · Metadata Enrichment | |
| **Search & Knowledge Architecture** | Hybrid Search Design · Knowledge Graph Basics · Ontology Design · Taxonomy Management | |

---

---

# ROLE 6: Project Management

**Role Summary:** Plans, delivers, and governs projects and programs in technical environments. Applies structured methodology while adapting to Agile delivery contexts. Bridges business stakeholders and technical teams.

---

## Category 6.1 — Project Foundations & Frameworks

| Skill | Sub-Skills | Notes |
|---|---|---|
| **PMBOK / PMP** | Project Charter · Scope Management · Schedule Management · Cost Management · Quality Management · Resource Management · Risk Management · Stakeholder Management · Procurement · Integration Management | Based on PMBOK 7th Ed / PMIstandards+ |
| **PMBOK 7 Principles** | Stewardship · Team · Stakeholders · Value · Systems Thinking · Leadership · Tailoring · Quality · Complexity · Risk · Adaptability · Change | Principle-based shift from PMBOK 6 |
| **Agile Frameworks Overview** | Scrum · Kanban · SAFe · LeSS · Disciplined Agile (DA) · Nexus | |
| **Scrum** | Roles (PO/SM/Dev Team) · Events (Sprint/Planning/Daily/Review/Retro) · Artifacts (PB/SB/Increment) · DoD · DoR | `[SHARED]` |
| **Kanban** | WIP Limits · Flow Metrics · Service Classes · Replenishment · Throughput | |
| **SAFe (Scaled Agile Framework)** | PI Planning · ART · Program Increment · Lean Portfolio Management | Awareness for large orgs |
| **Hybrid Project Delivery** | Agile-Waterfall Hybrid · Phase Gates with Sprints · Tailoring Approach | |

---

## Category 6.2 — Scope & Requirements Management

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Scope Definition** | Project Charter · Statement of Work · WBS (Work Breakdown Structure) · Scope Baseline | |
| **Requirements Elicitation** | Stakeholder Interviews · User Stories · Acceptance Criteria · Functional vs Non-Functional Req. | |
| **Change Control** | Change Request Process · Impact Assessment · CCB (Change Control Board) · Change Log | |
| **Backlog Management** | Epic/Feature/Story Hierarchy · Prioritization (MoSCoW, WSJF) · Backlog Refinement · Story Splitting | |

---

## Category 6.3 — Schedule & Cost Management

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Project Scheduling** | Critical Path Method · Network Diagrams · Milestone Planning · Schedule Compression (Crashing/Fast-Tracking) | |
| **Estimation** | Story Points · T-Shirt Sizing · Planning Poker · Analogous · Parametric · Bottom-Up | |
| **Earned Value Management (EVM)** | CPI · SPI · EAC · VAC · TCPI | |
| **Resource Planning** | RACI Matrix · Resource Leveling · Availability Matrix | |
| **Budget Management** | Cost Baseline · Contingency Reserve · Management Reserve · Variance Analysis | |

---

## Category 6.4 — Risk Management

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Risk Identification** | Risk Register · Brainstorming · Checklists · Expert Judgment · Assumption Analysis | |
| **Risk Analysis** | Probability-Impact Matrix · Qualitative vs Quantitative Analysis · Monte Carlo (Awareness) | |
| **Risk Response Planning** | Avoid · Mitigate · Transfer · Accept · Escalate · Contingency Plans | |
| **Issue Management** | Issue Log · Escalation Path · Resolution Tracking | |
| **Dependencies Management** | Dependency Map · FS/FF/SS/SF Relationships · External Dependency Tracking | |

---

## Category 6.5 — Stakeholder & Communication Management

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Stakeholder Analysis** | Stakeholder Register · Power/Interest Grid · Influence Mapping · Engagement Assessment | `[SHARED]` |
| **Communication Planning** | Comms Matrix · Meeting Cadence · Status Report Templates · Escalation Protocol | |
| **Status Reporting** | RAG Status · Executive Summary · Milestone Tracker · Variance Explanation | |
| **Meeting Facilitation** | Agenda Design · Decision Logging · Action Item Tracking · Time Management | |
| **Conflict Resolution** | Conflict Sources · Resolution Techniques (Collaborate/Compromise/Force/Withdraw) | |

---

## Category 6.6 — Quality & Governance

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Quality Management** | Quality Planning · QA vs QC · Inspection · Lessons Learned · Retrospectives | |
| **Definition of Done / Ready** | DoD Criteria · Acceptance Testing · Sign-Off Process | `[SHARED]` |
| **Project Governance** | Steering Committee · Decision Rights · RACI · Project Charter Approval | |
| **Lessons Learned & Retrospectives** | Retro Formats · Action Items · Knowledge Base · Improvement Cycles | |
| **PMO Integration** | PMO Types (Supportive/Controlling/Directive) · Templates · Portfolio Reporting | |

---

## Category 6.7 — Project Management Tooling

| Skill | Sub-Skills | Notes |
|---|---|---|
| **Microsoft Project** | Gantt Charts · Baseline · Resource Assignment · Critical Path View | |
| **Azure DevOps Boards** | Epic/Feature/Story/Task · Sprint Planning · Capacity Planning · Velocity · Queries | `[SHARED]` |
| **Jira** | Project Types · Backlog · Sprint Boards · Roadmap · Automation · Dashboards | |
| **ServiceNow / ITSM** | Change Management · Incident Management · Problem Management · CMDB | |
| **FreshService** | Ticket Management · Service Catalog · Change Advisory · Asset Management | `[SHARED]` |
| **Microsoft Planner / To-Do** | Task Assignment · Buckets · Progress Tracking | |
| **Smartsheet** | Grid/Gantt/Card Views · Automation · Dashboards · Forms | |
| **Confluence / Notion** | Documentation · Meeting Notes · Decision Logs · Project Wikis | `[SHARED]` |

---

---

# CROSS-ROLE SKILLS INDEX

The following skills appear across multiple roles. Proficiency is shared — score once, apply across relevant role calculations.

| Skill | Appears In |
|---|---|
| Azure Monitor / Log Analytics / KQL | Azure Cloud · Platform · Staff |
| GitHub (Core + Actions) | Platform · Azure Cloud · Staff |
| Azure DevOps | Azure Cloud · Platform · PM |
| Terraform | Azure Cloud · AWS Cloud · Platform |
| Docker | Platform · AI · Azure Cloud |
| Kubernetes (AKS / EKS) | Azure Cloud · AWS Cloud · Platform |
| Azure Key Vault | Azure Cloud · App Infra · Platform |
| Azure API Management | Azure Cloud · Platform |
| Azure App Service / Functions | Azure Cloud · AI |
| Grafana | Azure Cloud · Platform |
| Stakeholder Management | Staff · PM |
| Scrum / Agile | PM · Staff |
| Risk Management | Staff · PM |
| Docs-as-Code / Documentation | Staff · Platform |
| FreshService | Platform · PM |
| Python / TypeScript | AI · Platform |
| Cost Management / FinOps | Azure Cloud · Platform · Staff |
| LlamaIndex | AI · (Staff awareness) |
| Promptfoo / LangSmith | AI |
| N8N | AI · Platform |
| Confluence / Notion | PM · Staff · Platform |
| Azure AI Search | AI · Azure Cloud |
| Microsoft Copilot Studio | AI · Azure Cloud |
| Zero Trust Architecture | Azure Cloud · AWS Cloud · Staff |
| CI/CD Design Patterns | Platform · Azure Cloud · Staff |
| Azure Static Web Apps | Azure Cloud · Platform |
| Azure Blob Storage | Azure Cloud · AI |

---

---

# APPENDIX A — Suggested Proficiency Weighting by Role

For each role, not every skill carries equal career weight. Suggested category weights for role score calculation:

## Azure Cloud Engineer
| Category | Weight |
|---|---|
| Identity & Security | 20% |
| Networking | 20% |
| Compute | 20% |
| IaC & Automation | 15% |
| Monitoring & Observability | 15% |
| Governance & Operations | 10% |

## AWS Cloud Engineer
| Category | Weight |
|---|---|
| Identity & Security | 20% |
| Networking | 20% |
| Compute | 20% |
| IaC & Automation | 15% |
| Monitoring & Observability | 15% |
| Multi-Account Governance | 10% |

## Staff Engineer
| Category | Weight |
|---|---|
| Systems Thinking & Architecture | 30% |
| Technical Communication | 20% |
| Cross-Team Leadership & Influence | 20% |
| Execution & Delivery | 15% |
| Broad Technical Fluency | 15% |

## Platform Engineer
| Category | Weight |
|---|---|
| CI/CD & GitOps | 20% |
| IaC | 20% |
| Container & Kubernetes | 20% |
| Observability Platform | 20% |
| IDP & Developer Experience | 15% |
| FinOps | 5% |

## AI Engineer
| Category | Weight |
|---|---|
| LLM Fundamentals | 25% |
| Azure AI Platform | 20% |
| Agentic AI | 20% |
| AI Security & Governance | 15% |
| Dev Frameworks & Tooling | 15% |
| MLOps & Infrastructure | 5% |

## Project Management
| Category | Weight |
|---|---|
| Frameworks (PMBOK / Agile) | 25% |
| Stakeholder & Communication | 20% |
| Scope & Requirements | 15% |
| Risk Management | 15% |
| Schedule & Cost | 15% |
| Tooling | 10% |

---

# APPENDIX B — 2026 Emerging Skills to Watch

These skills are not yet required for all roles but are trending strongly and will carry increasing weight through 2026–2027:

| Skill | Relevant Roles | Why It Matters |
|---|---|---|
| Model Context Protocol (MCP) | AI Engineer · Platform | Emerging agent tool standard |
| OpenTelemetry (OTel) | Platform · Azure Cloud | Replacing proprietary agents |
| Crossplane | Platform | Kubernetes-native IaC |
| FinOps Certification (FOCUS) | All Cloud Roles | Cost governance becoming mandatory |
| AI Red-Teaming | AI Engineer · Staff | Security expectation growing |
| Team Topologies Practitioner | Staff · Platform | Org design literacy |
| Karpenter (AKS/EKS) | Platform · Azure Cloud · AWS Cloud | Replacing Cluster Autoscaler |
| Azure Deployment Stacks | Azure Cloud · Platform | Bicep governance advancement |
| Backstage IDP | Platform | IDP standard for large orgs |
| LLMOps | AI Engineer | MLOps adapted for LLMs |
| PMBOK 8 (when released) | PM | Anticipated hybrid model update |
| GitHub Copilot for Platform | All Engineering Roles | AI-assisted engineering workflows |

---

*End of Taxonomy — Version 1.0*  
*Review cycle: Quarterly alignment recommended given pace of AI and cloud tooling changes.*
