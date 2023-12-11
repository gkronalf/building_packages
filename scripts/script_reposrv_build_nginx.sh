#!/bin/bash
wget https://nginx.org/packages/centos/8/SRPMS/nginx-1.20.2-1.el8.ngx.src.rpm
rpm -i nginx-1.*
wget --no-check-certificate https://www.openssl.org/source/openssl-1.1.1w.tar.gz
tar -xvf openssl-1.1.1w.tar.gz
yum-builddep -y /root/rpmbuild/SPECS/nginx.spec
rpmbuild -bb /root/rpmbuild/SPECS/nginx.spec
sed '/\--with-ld-opt="%{WITH_LD_OPT}" \ /i --with-openssl=/root/openssl-1.1.1w' /root/rpmbuild/SPECS/nginx.spec
#cp -r openssl-1.1.1w /root/openssl-1.1.1w
yum localinstall -y /root/rpmbuild/RPMS/x86_64/nginx-1.20.2-1.el7.ngx.x86_64.rpm
systemctl start nginx
