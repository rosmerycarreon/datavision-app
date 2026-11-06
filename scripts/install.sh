#!/bin/bash
cd /home/ubuntu/app

# Instalar Node.js si no existe
if ! command -v node &> /dev/null
then
    curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
    sudo apt-get install -y nodejs
fi

# Instalar pm2 para mantener la app corriendo en segundo plano
sudo npm install -g pm2

# Instalar dependencias de la app
npm install

# Iniciar o reiniciar la aplicación
pm2 restart all || pm2 start index.js --name "datavision-app"