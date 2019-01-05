#/bin/bash

echo "*******************************"
echo "*                             *"
echo "*      Umbra Masternode       *"
echo "*           SETUP             *"
echo "*                             *"
echo "*******************************"
echo && echo && echo

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

IP=$(curl -s4 icanhazip.com)
echo -e "${GREEN}Please enter your private key: (Copy from Windows and right click to paste and press enter)${NC}"
read KEY
echo -e "${GREEN}Completion: 0%...${NC}"
cd
sudo apt-get install -y ufw &>/dev/null
sudo ufw allow ssh/tcp &>/dev/null
sudo ufw limit ssh/tcp &>/dev/null
sudo ufw allow 18878/tcp &>/dev/null
sudo ufw logging on &>/dev/null
echo "y" | sudo ufw enable &>/dev/null
echo -e "${GREEN}Completion: 90%...${NC}"
sudo chmod +x ./umbra*
sudo cp ./umbrad ./umbra-cli /usr/local/bin
sudo mkdir /root/.umbra
echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> /root/.umbra/umbra.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> /root/.umbra/umbra.conf
echo "rpcallowip=127.0.0.1" >> /root/.umbra/umbra.conf
echo "listen=1" >> /root/.umbra/umbra.conf
echo "server=1" >> /root/.umbra/umbra.conf
echo -e "${GREEN}Completion: 95%...${NC}"
echo "daemon=1" >> /root/.umbra/umbra.conf
echo "maxconnections=250" >> /root/.umbra/umbra.conf
echo "masternode=1" >> /root/.umbra/umbra.conf
echo "masternodeaddr$IP:18878" >> /root/.umbra/umbra.conf
echo "externalip$IP:18878" >> /root/.umbra/umbra.conf
echo "masternodeprivkey=$KEY" >> /root/.umbra/umbra.conf
echo -e "${GREEN}Completion: 99%...${NC}"
cd /root
sudo umbrad &>/dev/null
echo -e "${GREEN}Completion: 100%...${NC}"
echo -e "Thank you for installing the Umbra wallet.  Please move onto the ${RED}NEXT${NC} step."
