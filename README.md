# blog-devops

Ansible setup for https://rockyj.in

Uses setup described in [blog](https://rockyj.in/2018/10/03/simple-ci.html)

## Basic setup

- Create droplet from DO (for example)
- `adduser rockyj`
- `usermod -aG sudo rockyj`
- `mkdir -p /home/rockyj/.ssh`
- `cp /root/.ssh/authorized_keys /home/rockyj/.ssh/`
- `cd /home/rockyj/`
- `chown -R rockyj:rockyj .ssh/`
- `chmod -R 0700 .ssh/`
- `chmod ugo-x .ssh/authorized_keys`
- Later `rm -f /root/.ssh/authorized_keys`

## Domain setup

- Buy domain from name.com (for example)
- Update `domain_name` in `main.yml`
