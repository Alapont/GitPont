#!/bin/bash
# copied from about.gitlab.com/installation/#centos-7
#todo check root
#enable ssh & http
yum install -y curl policycoreutils-python openssh-server
systemctl enable sshd
systemctl start sshd
firewall-cmd --permanent --add-service=http
systemctl reload firewalld

#enable smtp
yum install postfix
systemctl enable postfix
systemctl start postfix

#add gilab Package
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/script.rpm.sh | sudo bash
EXTERNAL_URL=$1 yum install -y gitlab-ee

echo -e "\n\n\n  Install complete, go to localhost and register"