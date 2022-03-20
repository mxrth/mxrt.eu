ssh-keygen -t ed25519 -C "admin@mxrt.de"

sudo cp mxrt.de/etc/ssh/sshd_config /etc/ssh/sshd_config

service ssh restart