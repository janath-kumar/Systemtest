# Infrastructure provisioning and monitoring with Terrafrom & Prometheus


## Overview

This project provision a basic cloud using infrastructure using terraform aws and setup the monitoring stack using prometheus

    - EC2 instance for the application and monitoring stack.
    - Load Balancer
    - S3 Buckket for storage/backup
    - Prometheus for the metrics collection
    - Grafana for metrics visualization


---

## Prwrequisties

    - Terrafrom v1.3+
    - AWS CLI configured with credentials
    - An AWS account
    - Key pair for EC2 instances access




## Poject Structure

    .|---main.tf
     |---variable.tf
     |---prometheus.sh
     |---prometheus.yml
     |---terraform.tfvars
        |---README.md


## Commands to exexute 
    - terraform init
    - terraform plan
    - terraform apply

## Cleanup
 ** To destory all resource**
    - terraform destory

** For Grafana Installation **

    - Can be inbstalled manually or scripted on a seperate EC2 INSTANCE
    - connect the Prometheus as a data source Use "http://IP:9090"
    - Create or import dashboards to visualize CPU, memory, disk ets.
