echo "####################################❤❖﷽❖❤#####################################"
echo "********************************(khasbunalloh wanikmal wakil)*******************************"
#!/bin/bash
#
#Vars
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
read -p ">> bismillah >>: " CRP 
./ngrok authtoken $CRP &>/dev/null &
nohup ./ngrok tcp 30889 &>/dev/null &
echo "############################################################################################"
wget -O lite11.qcow2 --no-check-certificate https://app.vagrantup.com/thuonghai2711/boxes/WindowsQCOW2/versions/1.0.2/providers/qemu.box > /dev/null 2>&1
echo "#..%%%%...%%..%%..%%..%%...%%%%.....%%..%%..%%..%%..%%..%%..%%..%%..%%..%%..%%%%%....%%%%..#"
apt install qemu -y > /dev/null 2>&1
echo "#.%%..%%..%%%.%%..%%%.%%..%%..%%.....%%%%...%%..%%..%%.%%...%%..%%..%%..%%..%%..%%..%%..%%.#"
apt install qemu-system -y > /dev/null 2>&1
echo "#.%%..%%..%%.%%%..%%.%%%..%%..%%......%%....%%..%%..%%%%....%%..%%%%%%..%%..%%%%%...%%..%%.#"


echo "#.%%..%%..%%..%%..%%..%%..%%..%%......%%....%%..%%..%%.%%...%%..%%..%%..%%..%%..%%..%%..%%.#"
availableRAMcommand="free -m | tail -2 | head -1 | awk '{print \$7}'" > /dev/null 2>&1
availableRAM=$(echo $availableRAMcommand | bash) > /dev/null 2>&1
custom_param_ram="-m "$(expr $availableRAM - 856 )"M" > /dev/null 2>&1
echo "#..%%%%...%%..%%..%%..%%...%%%%.......%%.....%%%%...%%..%%..%%..%%..%%..%%..%%..%%...%%%%..#"
cpus=$(lscpu | grep CPU\(s\) | head -1 | cut -f2 -d":" | awk '{$1=$1;print}') > /dev/null 2>&1
qemu-system-x86_64 -enable-kvm -cpu host -hda lite11.qcow2 -boot d -net nic -smp cores=2 -net user,hostfwd=tcp::30889-:3389 $custom_param_ram -nographic &>/dev/null &
echo "############################################################################################"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "*****************************©2022 - 🅞🅝🅝🅞 🅨🅤🅚🅘🅗🅘🅡🅞***********************************"
echo "###################❤سُبْحَانَ اللهِ، وَالْحَمْدُ لِلَّهِ، وَلَا إِلَهَ إِلَّا اللهُ، وَاللهُ أَكْبَرُ، وَلَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللهِ❤####################"
sleep 9876543210
