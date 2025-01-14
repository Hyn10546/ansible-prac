#!/bin/bash
tee -a ansible.cfg <<EOF
[defaults]
inventory = ./inventory
remote_user = ansible-user
ask_pass = false

[privilege_escalation]
become = true
become_method = sudo
become_user = root
become_ask_pass = false
EOF
tee -a inventory <<EOF
servera
[webservers]
serverb
[dbservers]
serverc
EOF
