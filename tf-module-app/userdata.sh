#!/bin/sh

labauto ansible
ansible-pull -i localhost, -U https://github.com/arrvinddev/ansible-project.git roboshop.yml -e role_name=${name} -e env=${env} &>>/opt/ansible.log