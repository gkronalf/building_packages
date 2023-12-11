#!/bin/bash
mkdir /usr/share/nginx/html/repo/
cp /root/rpmbuild/RPMS/x86_64/nginx-1.20.2-1.el7.ngx.x86_64.rpm /usr/share/nginx/html/repo/
createrepo /usr/share/nginx/html/repo/
nginx -s reload
wget https://www.percona.com/downloads/Percona-Server-5.7/Percona-Server-5.7.31-34/binary/redhat/7/x86_64/Percona-Server-5.7.31-34-r2e68637-el7-x86_64-bundle.tar
#wget https://downloads.percona.com/downloads/Percona-Server-5.7/Percona-Server-5.7.44-48/binary/redhat/7/x86_64/Percona-Server-server-57-5.7.44-48.1.el7.x86_64.rpm
#wget https://downloads.percona.com/downloads/Percona-Server-5.7/Percona-Server-5.7.44-48/binary/redhat/7/x86_64/Percona-Server-client-57-5.7.44-48.1.el7.x86_64.rpm
tar -xvf Percona-Server-5.7.31-34-r2e68637-el7-x86_64-bundle.tar
mv  *.rpm /usr/share/nginx/html/repo/
createrepo /usr/share/nginx/html/repo/