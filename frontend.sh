yum install nginx -y
rm -rf /usr/share/nginx/html/*
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip

cd /usr/share/nginx/html
unzip /tmp/frontend.zip

## we need to copy config file
cp /home/centos/roboshop-shell/roboshop.config /etc/nginx/default.d/roboshop.config
systemctl enable nginx
systemctl restart nginx
