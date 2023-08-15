printf " Running ricing script \n You might need to provide password and cofirmation.\n Keep an eye on the terminal\n"

./scripts/base.sh

printf "\n all required downloades are done \n"
printf "\n---------------------------------------------- \n"

printf "\n Setting-up Lightdm hang tight \n"
./scripts/lightdm.sh

printf "\n Lightdm setup complete \n"
printf "\n---------------------------------------------- \n"
printf "\n setting up i3wm rice, hang om a sec ^,,^ \n"

./scripts/i3wmconfig.sh
printf "\n i3WM Ricing is done \n"

./scripts/bash.sh

sudo systemctl enable lightdm

for (( i = 10; i >= 1; i-- )); do
    echo "Rebooting in $i sec"
    sleep 1
done

sudo reboot

