
#refresh janus-gateway using git pull then rebuild binaries using this script

sudo aptitude update


PACKAGES=$(cat packages)

sudo aptitude install $PACKAGES -y

cd ~/janus-gateway

sh autogen.sh

./configure --disable-websockets --disable-data-channels --disable-rabbitmq --disable-docs --prefix=/opt/janus

make

sudo make install

sudo make configs


