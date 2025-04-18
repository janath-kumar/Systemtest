The script backup your appplicaton directory, compress with timestamp filname and deletes backup older than 7 days.

#FEATURES

- Backup a specified directory (eg., '/var/www/html') into the /home/janath/backup
- Compress the backup using "tar.gz"
- Adds the current date to the backup filname (eg., 'html-backup-2025-04-18.tar.gz'
- Deletes the backup files older than 7 days.
- Checks for the required tools like (tar, gzip, cron)) before processing
#HOW TO USE

** TO MAke the script executable**:
USE './backup.sh' or 'sh backup.sh'

IF the script won't execute >> Use "chmod +x backup.sh"





---




TO Execute the Dockerfile

#First building the image

- To build the image Use CLI "docker build -t my-node-app ."
#Second to run the container

- To run the Docker container Use CLI "docker run -d --name <containername> -p <hostport:containerport> my-node-app"
                                    (eg., "docker run -d --name mynode -p 8080:8080 my-node-app")
#Finally access the port via localhost for tset "http://localhost:8080"







---



Infrastructure provisioning and monitoring with Terrafrom & Prometheus
Overview
This project provision a basic cloud using infrastructure using terraform aws and setup the monitoring stack using prometheus

- EC2 instance for the application and monitoring stack.
- Load Balancer
- S3 Buckket for storage/backup
- Prometheus for the metrics collection
- Grafana for metrics visualization
Prwrequisties
- Terrafrom v1.3+
- AWS CLI configured with credentials
- An AWS account
- Key pair for EC2 instances access
Poject Structure
.|---main.tf
 |---variable.tf
 |---prometheus.sh
 |---prometheus.yml
 |---terraform.tfvars
    |---README.md
Commands to exexute
- terraform init
- terraform plan
- terraform apply
Cleanup
** To destory all resource** - terraform destory

** For Grafana Installation **

- Can be inbstalled manually or scripted on a seperate EC2 INSTANCE
- connect the Prometheus as a data source Use "http://IP:9090"
- Create or import dashboards to visualize CPU, memory, disk ets.
