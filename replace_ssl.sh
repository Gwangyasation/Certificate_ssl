#!/bin/bash
# Task 2.1: Script for SSL certificate replacement 

CERT_DIR="/etc/nginx/ssl"
CERT_FILE="$CERT_DIR/server.crt"
KEY_FILE="$CERT_DIR/server.key"

echo "Starting SSL replacement process..." 

# 1. สร้างโฟลเดอร์เก็บ SSL [cite: 37]
sudo mkdir -p $CERT_DIR

# 2. สร้าง Self-signed Certificate (แทนการ touch เพื่อความสมจริง) [cite: 41]
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout $KEY_FILE -out $CERT_FILE \
  -subj "/C=TH/ST=Bangkok/L=Bangkok/O=DevOps/OU=IT/CN=localhost"

# 3. ตรวจสอบ Nginx Configuration และ Reload [cite: 37, 40]
sudo nginx -t && sudo systemctl reload nginx

echo "SSL Certificate has been replaced and Nginx reloaded successfully."
