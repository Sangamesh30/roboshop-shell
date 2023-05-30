cp mongodp.repo /etc/yum.repos.d/mongo.repo

yum install mongodb-org -y

#modifiy the config file

systemctl enable mongod
systemctl restart mongod