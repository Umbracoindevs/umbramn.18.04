# umbramn
# masternode
# version 2.0.0.

open wallet debug console
getaccountaddress
copy wallet address
masternode genkey
sendtoaccountaddress WALLETADDRESS 10,000 UMB2
masternode outputs
paste all info in masternode.conf 

EXAMPLE
mn01 127.0.0.1:18878 xxxxxxxxPRIVATExxxxxKEYxxxxxHERExxx txidxxxgoesxxxherexxx 1

keep wallet and debug open still but save the masternode.conf file 

FROM FRESH UBUNTU 

login via ssh 

sudo spt-get install unrar 
git clone https://github.com/Umbracoindevs/umbramn.git
cd umbramn 
sudo unrar x umbrad.rar
sudo chmod -R 755 *
sudo bash install.sh
wait for it to ask for the private key and enter it. 
it will tell you when its completed and ready to continue to next step. 
close cold wallet and reopen 
open my masternodes tab 
click start missing 
right click on the one you started and start again for safe measure. 
