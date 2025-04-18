sudo apt update && sudo apt install -y prometheus node-exporter
#To start prometheus & node-exporter
sudo systemctl enable prometheus
sudo systemctl start prometheus
sudo systemctl enable node-exporter
sudo systemctl start node-exporter
