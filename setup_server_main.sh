#!/bin/sh

ansible-playbook main.yml -i hosts --ask-become-pass
