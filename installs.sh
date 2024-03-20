/bin/bash

apt-get update
apt-get install -y python3
apt-get install python3-pip -y
python3 -m pip install jupyter      
apt-get install quantum-espresso -y    
apt-get install git -y   
cd /home/user/ 
git clone https://github.com/susyexists/espresso-machine.git
cd espresso-machine
pip install --upgrade pip
pip install -r requirements.txt --root-user-action=ignore 
