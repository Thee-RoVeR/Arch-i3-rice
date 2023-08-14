cp -r ~/Arch-i3-rice/.bashrc ~/.bashrc
source ~/.bashrc

sudo cp -r ~/Arch-i3-rice/root.bashrc /etc/bash.bashrc
sudo -E bash -c 'source /etc/bash.bashrc'
printf "\n Bash sourcing is done \n"
