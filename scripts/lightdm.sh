#lightdm settings 
#enable lightdm
#sudo systemctl enable lightdm

#replacing some lightdm files
sudo cp -r ~/Arch-i3-rice/lightdm/lightdm.conf /etc/lightdm/
sudo cp -r ~/Arch-i3-rice/lightdm/slick-greeter.conf /etc/lightdm/
sudo cp -r ~/Arch-i3-rice/lightdm/backgrounds/* /usr/share/backgrounds/

echo "Files replaced successfully ^..^"




