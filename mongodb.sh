cp mongodb.repo /etc/yum.repos.d/mongo.repo
yum install mongodb-org -y

#update the listen address

systemctl enable mongod
systemctl restart mongod