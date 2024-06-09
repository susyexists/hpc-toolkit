/bin/bash
#update package manager
apt-get update
#Install python
apt-get install -y python3
#Install python package installer
apt-get install python3-pip -y
#Install jupyter environment
python3 -m pip install jupyter      
#Install quantum espresso
apt-get install quantum-espresso -y
#Install git
apt-get install git -y   
#Clone espresso-machine repository
git clone https://github.com/susyexists/espresso-machine.git
#Go to espresso-machine directory
cd espresso-machine
#Update python package installer
pip install --upgrade pip
#Instal required python packages
pip install -r requirements.txt --root-user-action=ignore 
