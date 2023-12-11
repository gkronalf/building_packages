#!/bin/bash
yum update
yum install -y \
   redhat-lsb-core \
   wget \
   rpmdevtools \
   rpm-build \
   createrepo \
   yum-utils \
   gcc
sudo chmod u+x ./scripts/*.sh