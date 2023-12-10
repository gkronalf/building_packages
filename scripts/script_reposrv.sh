#!/bin/bash

wget https://nginx.org/packages/centos/8/SRPMS/nginx-1.20.2-1.el8.ngx.src.rpm

wget --no-check-certificate https://www.openssl.org/source/openssl-1.1.1w.tar.gz

tar -xvf openssl-1.1.1w.tar.gz

sudo yum-builddep -y rpmbuild/SPECS/nginx.spec

sudo cp -r openssl-1.1.1w /root/openssl-1.1.1w

sudo yum localinstall -y /root/rpmbuild/RPMS/x86_64/nginx-1.20.2-1.el7.ngx.x86_64.rpm
sudo systemctl start nginx

#sudo mkdir /root/openssl-1.1.1a