# blog-devops

Ansible setup for https://rockyj.in

Uses setup described in [blog](https://rockyj.in/2018/10/03/simple-ci.html)

## New project setup

- Buy server from DO and note IP
- Buy domain from name.com (for example), change "A Record" to IP
- Update `domain_name` in `base.yml` and `main.yml`
- Start with user root in `ansible.cfg`
- Run `setup_server_base.sh`
- SSH into server and change password `passwd rockyj`
- Run `openssl dhparam -out /etc/ssl/certs/dhparam.pem 4096`
- Run `certbot --nginx`
- The https://[domain]/index.nginx-debian.html should work on HTTPS now
- Change to "rockyj" in `ansible.cfg`
- Run `setup_server_main.sh`
- SSH into server `sudo reboot`
