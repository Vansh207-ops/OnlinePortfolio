# My Portfolio Website
# My Student no is 35267405
## Overview

This project hosts my personal portfolio website on a remote Linux server using the NGINX web server. The site displays my name, student number, introduction, skills relevant to IT engineering, and contact details.

## Server Setup and Deployment

1. Connected to the server via SSH using:

ssh root@170.64.229.18




2. Updated package lists and installed NGINX:

apt update
apt install nginx -y





3. Enabled and started the NGINX service:

systemctl enable nginx
systemctl start nginx




4. Created and edited the main website page at:

nano /var/www/html/index.html



5. Pasted the HTML content and saved the file.

6. Verified the website by opening:

http://170.64.229.18
