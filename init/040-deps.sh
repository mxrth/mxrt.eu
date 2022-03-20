sudo apt-get install git vim nftables

git config --global user.email "admin@mxrt.de"
git config --global user.name "mxrtde-admin"
git config --global pull.rebase false

git clone git@github.com:mxrth/mxrt.de.git

cp mxrt.de/home/admin/.bashrc /home/admin/.bashrc
cp mxrt.de/home/admin/.bash_profile /home/admin/.bash_profile