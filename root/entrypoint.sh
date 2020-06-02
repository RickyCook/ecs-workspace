#!/bin/bash -ex
/usr/libexec/openssh/sshd-keygen ed25519
/usr/local/bin/pm2 start --no-daemon /etc/pm2/ecosystem.config.yaml
