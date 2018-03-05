#!/bin/bash


sudo su - $(whoami) - << EOF
sudo mkdir -p /var/hyperledger
sudo chown $(whoami):$(whoami) /var/hyperledger
sudo mkdir -p /opt/gopath/src/github.com/hyperledger/fabric
sudo chown -R $(whoami):$(whoami)  /opt/gopath/
git clone https://github.com/hyperledger/fabric /opt/gopath/src/github.com/hyperledger/fabric
cd /opt/gopath/src/github.com/hyperledger/fabric
make gotools
make peer orderer peer-docker orderer-docker
EOF

