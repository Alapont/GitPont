#!/bin/bash
yum install wget -y
# wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
curl https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -o epel-release-latest-7.noarch.rpm -s
rpm -Uvh epel-release-latest-7.noarch.rpm
