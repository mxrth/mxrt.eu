apt install sudo

#root    ALL=(ALL) ALL
#admin   ALL=(ALL) ALL
visudo

su admin #we are now admin
sudo chown -R admin:admin /home/admin