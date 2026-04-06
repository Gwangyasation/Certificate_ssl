{

#!/bin/bash
# Script สำหรับ Task 2.1: Automate SSL replacement [cite: 29]

# กำหนด Path (สมมติตำแหน่งไฟล์)
CERT_DEST="/etc/nginx/ssl/server.crt"
KEY_DEST="/etc/nginx/ssl/server.key"

echo "Starting SSL replacement process..."

# 1. สร้างโฟลเดอร์เก็บ SSL หากยังไม่มี [cite: 37]
sudo mkdir -p /etc/nginx/ssl

# 2. จำลองการคัดลอกไฟล์ (ในงานจริงคุณจะเปลี่ยนไฟล์ที่นี่) [cite: 41]
# เราจะสร้างไฟล์หลอกขึ้นมาเพื่อทดสอบ
sudo touch  

# 3. ตรวจสอบ Nginx Configuration และ Reload [cite: 37, 40]
sudo nginx -t && sudo systemctl reload nginx

echo "SSL Certificate has been replaced and Nginx reloaded."
}
