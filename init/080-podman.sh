sudo apt install podman uidmap buildah fuse-overlayfs slirp4netns catatonit systemd-container

sudo useradd -m -u 100000 pods
sudo groupmod -g 100000 pods
sudo passwd pods
sudo loginctl enable-linger pods

echo "pods:100000:65536" \
  | sudo tee -a /etc/subuid \
  | sudo tee -a /etc/subgid

sudo runuser -l pods -c "mkdir -p ~/.config/systemd/user" 

sudo machinectl login # login as pods
