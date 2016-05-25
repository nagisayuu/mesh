#!/bin/bash

cd
cp -ip .bash_profile .bash_profile.org
sed -e "/export DB_PORT/d" .bash_profile.org > .bash_profile
echo "export DB_PORT_3306_TCP=$DB_PORT_3306_TCP" >> .bash_profile
echo "export DB_PORT_3306_TCP_ADDR=$DB_PORT_3306_TCP_ADDR" >> .bash_profile
echo "export DB_PORT_3306_TCP_PORT=$DB_PORT_3306_TCP_PORT" >> .bash_profile
service httpd restart
exec /bin/bash
