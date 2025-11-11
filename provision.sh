#!/usr/bin/env bash
set -e

sudo apt-get update -y
sudo apt-get install -y nginx git

# Desabilita a página default do Nginx
if [ -f /etc/nginx/sites-enabled/default ]; then
  sudo rm -f /etc/nginx/sites-enabled/default
fi

# Copia nossa conf
sudo cp /vagrant/nginx-site.conf /etc/nginx/sites-available/site
sudo ln -sf /etc/nginx/sites-available/site /etc/nginx/sites-enabled/site

# Permissões da pasta sincronizada
sudo chown -R www-data:www-data /var/www/html
sudo find /var/www/html -type d -exec chmod 755 {} \;
sudo find /var/www/html -type f -exec chmod 644 {} \;

# Testa e sobe Nginx
sudo nginx -t
sudo systemctl enable nginx
sudo systemctl restart nginx

echo "Provisionamento concluído."
