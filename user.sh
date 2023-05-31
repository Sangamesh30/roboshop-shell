curl -sL https://rpm.nodesource.com/setup_lts.x | bash

yum install nodejs -y

useradd roboshop

rm -rf /app
mkdir /app

curl -L -o /tmp/user.zip https://roboshop-artifacts.s3.amazonaws.com/user.zip
cd /app
unzip /tmp/user.zip

cd /app
npm install

cp /home/centos/roboshop-shell/user.service /etc/systemd/system/user.service

systemctl daemon-reload
systemctl enable user
systemctl start user

cp /home/centos/roboshop-shell/mongodb.repo /etc/yum.repos.d/mongodb.repo

yum install mongodb-org-shell -y

mongo --host mongodb-dev.awsdevops73.store </app/schema/user.js