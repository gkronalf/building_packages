#!/bin/bash
cat >> /etc/yum.repos.d/otus.repo << EOF
[otus]
name=otus-linux
baseurl=http://192.168.50.10/repo
gpgcheck=0
enabled=1
EOF

