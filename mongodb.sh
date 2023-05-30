echo -e "\e[33mcopy mongodb repo file \e[0m"
cp mongodp.repo /etc/yum.repos.d/mongo.repo
echo -e "\e[33mInstalling mongodb server \e[0m"
yum install mongodb-org -y

#modifiy the config file
echo -e "\e[33mstart mongodb service\e[0m"
systemctl enable mongod
systemctl restart mongod