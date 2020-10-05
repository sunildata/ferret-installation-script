#creater sunil

#!/bin/bash
######################################
Red='\033[0;31m'
YEL='\033[1;33m'
GRN='\033[0;32m'
NC='\033[0m'
#######################################
#_______________________downloading________________________________________________
clear
sleep 1

echo -e "${Red}FerretDarasets Downloading${NC}"
sleep 2
wget https://github.com/NOAA-PMEL/FerretDatasets/archive/v7.6.zip

sleep 1
echo -e "${Red}Ferret-7.6.0  Downloading${NC}"
sleep 2
wget https://github.com/NOAA-PMEL/Ferret/releases/download/v7.6.0/Ferret-7.6.0-RHEL7.tar.gz
sleep 1

#______________________________unzip_________________________________________________
unzip v7.6.zip # unziping 
tar -xvf Ferret-7.6.0-RHEL7.tar.gz  
sleep 1

#______________________________creating directory and moving____________________________
mkdir -p /usr/local/ferret/fer_dsets

mv FerretDatasets-7.6 /usr/local/ferret/fer_dsets
mv Ferret-7.6.0-RHEL7 /usr/local/ferret
sleep 1
#______________________________ferret installation_____________________________________
sleep 1
echo -e "${YEL}==================================================${NC}"
echo -e "${YEL}==================================================${NC}"
echo -e "${Red}This are all path copy and past it${NC}"
echo -e "${Red}1st =>${NC} ${GRN}/usr/local/ferret/Ferret-7.6.0-RHEL7${NC} "
echo -e "${Red}2nd =>${NC} ${GRN}/usr/local/ferret/fer_dsets/FerretDatasets-7.6${NC}"
echo -e "${Red}3rd =>${NC} ${GRN}/usr/local/ferret/Ferret-7.6.0-RHEL7${NC}"
echo -e "${Red}4th =>${NC} ${GRN}press s for shell${NC}"
echo -e "${Red}5th =>${NC} ${GRN}3 for save and exit${NC}" 
echo -e "${YEL}==================================================${NC}"
echo -e "${YEL}==================================================${NC}"
sleep 1
bash /usr/local/ferret/Ferret-7.6.0-RHEL7/bin/Finstall

#____________________________source the path________________________________________
echo "source /usr/local/ferret/Ferret-7.6.0-RHEL7/ferret_paths" >> ~/.bashrc
`source ~/.bashrc`
