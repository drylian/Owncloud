#!/bin/ash

echo "Deletando Arquivos Temporários"

rm -rf /home/container/tmp/*

echo "Arquivos temporários deletados"

cd /home/container

echo "⟳ Iniciando PHP-FPM..."
php --version
/usr/sbin/php-fpm7 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "✓ Iniciado o PHP-FPM"

echo "⟳ Iniciando Nginx..."

/usr/sbin/nginx -v

echo "✓ Inicializado com sucesso"

/usr/sbin/nginx -c /home/container/nginx/nginx.conf -p /home/container/

echo "✓ Inicializado com sucesso"
