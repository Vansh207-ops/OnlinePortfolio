#!/bin/bash

# ICT171 Portfolio Setup Script
# Author: Vansh Ahuja
# Student Number: 35267405

echo "=================================================="
echo "🚀 Starting setup for Vansh Ahuja's Portfolio Website"
echo "=================================================="

# Step 1: Update package list
echo "🔄 Updating package list..."
apt update -y

# Step 2: Install nginx
echo "🌐 Installing NGINX web server..."
apt install nginx -y

# Step 3: Enable nginx to start on boot
echo "🔧 Enabling NGINX service..."
systemctl enable nginx

# Step 4: Start nginx now
echo "▶️ Starting NGINX..."
systemctl start nginx

# Step 5: Deploy HTML file
echo "📄 Deploying index.html to /var/www/html..."
cp index.html /var/www/html/index.html

# Step 6: Set correct ownership
echo "🔐 Setting file ownership to www-data..."
chown www-data:www-data /var/www/html/index.html

# Step 7: Restart nginx to apply changes
echo "🔁 Restarting NGINX..."
systemctl restart nginx

# Step 8: Open HTTP port (if UFW is enabled)
if command -v ufw &> /dev/null; then
    echo "🛡️ Allowing HTTP traffic through firewall..."
    ufw allow 'Nginx HTTP'
fi

echo "✅ Setup complete!"
echo "🌐 Your website should now be live at: http://<your-ip-address>"
echo ""
echo "👉 NOTE: If running manually, first make this script executable using:"
echo "   chmod +x setup.sh"
echo "Then run it with:"
echo "   ./setup.sh"
