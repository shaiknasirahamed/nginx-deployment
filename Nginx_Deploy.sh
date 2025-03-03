#!/bin/bash
# Update and install Nginx
sudo apt update -y
sudo apt install nginx -y

# Start and enable Nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# Create a custom index.html
echo "<h1>Deployed via GitHub Actions</h1>" | sudo tee /var/www/html/index.html

# Restart Nginx
sudo systemctl restart nginx
