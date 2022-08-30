# Open Ports
sudo firewall-cmd --zone=public --permanent --add-port=80/tcp
sudo firewall-cmd --zone=public --permanent --add-port=443/tcp
sudo firewall-cmd --reload
# Renew SSL
certbot renew
# Remove unwanted Ports
sudo firewall-cmd --remove-port=80/tcp
sudo firewall-cmd --remove-port=443/tcp
sudo firewall-cmd --runtime-to-permanent
sudo firewall-cmd --reload
# End
echo "SSL Renew Done !"
# Remove opcmake file
rm -r renew-ssl.sh