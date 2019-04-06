#!/bin/sh

ansible-playbook base.yml -i hosts --become-user=root
