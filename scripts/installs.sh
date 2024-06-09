num_cores=$(sh /check_cores.sh)
sh /apt-get.sh
sh /hdf5.sh $num_cores
sh /qe.sh $num_cores
mkdir work

# #Install quantum espresso
# apt-get install quantum-espresso -y
# #Clone espresso-machine repository
# git clone https://github.com/susyexists/espresso-machine.git
# #Go to espresso-machine directory
# cd espresso-machine
# #Instal required python packages
# pip install -r requirements.txt --root-user-action=ignore 
