#we are currently root

#user: admin
#allowed to sudo
useradd admin 
passwd admin #manual input required, password created by and saved in 1password

mkdir /home/admin
mkdir /home/admin/.ssh
chmod 700 /home/admin/.ssh

#regular user
#no special privileges
useradd max
passwd max #manual input required, password created by and saved in 1password

mkdir /home/max
mkdir /home/max/.ssh
chmod 700 /home/max/.ssh

