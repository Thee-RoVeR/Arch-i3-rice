printf "Running ricing script \n You might need to provide password and cofirmation.\n Keep an eye on the terminal\n"

./scripts/base.sh

printf "\n all required downloades are done"
printf "\n----------------------------------------------"

printf "\n Setting-up Lightdm hang tight \n"
./scripts/lightdm.sh

printf "\n Lightdm setup complete"
printf "\n----------------------------------------------"
printf "setting up i3wm rice, hang om a sec ^,,^ "

./scripts/i3wmconfig.sh

printf "\n i3WM Ricing is done"
printf "-----------------------------------------------"
printf "Press \e[1mCtrl+Shift+R\e[0m to apply the rice."
printf "-----------------------------------------------"

sudo cp -r ~/Arch-i3-rice/.bashrc ~/
source .bashrc

sudo su
cd /
sudo cp -r ~/Arch-i3-rice/root.bashrc /etc/bash.bashrc
source /etc/bash.bashrc

for (( i = 10; i >= 1; i-- )); do
    echo "Reboot in: $i sec"
    sleep 1
done
reboot
