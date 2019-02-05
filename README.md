18.04 Ubuntu Bionic 


# ONE LINE SET FOR VPS
       sudo apt-get update && sudo apt-get install rar unrar && git clone https://github.com/Umbracoindevs/umbramn.git && cd umbramn && sudo unrar x umbrad.rar && sudo chmod -R 755 * && sudo bash install.sh





# UMBRA MASTERNODE INSTALL AND SETUP SUPER EASY! must be Ubuntu 18.04 (BIONIC)
       masternode version 2.0.0.

# open wallet debug console

# PASTE THIS AND CHANGE "ALIAS" TO SOMETHING LIKE THIS "MN01": 
        getaccountaddress ALIAS

# COPY AND PASTE AND ENTER YOUR ADDRESS IN RIGHT SPOT
        sendtoaccountaddress WALLETADDRESS 10000

# PASTE THIS
        masternode genkey

# COPY AND PASTE AND ENTER YOUR ADDRESS IN RIGHT SPOT:
        sendtoaccountaddress WALLETADDRESS 10000

# PASTE THIS:
        masternode outputs

# COPY AND PASTE ALL THIS INFO INFO YOUR /masternode.conf EASILY OPENED FROM TOOLS TAB WITHIN THE WALLET 

# EXAMPLES HAVE # IN FRONT OF IT REMOVE THIS LIKE THE EXAMPLE! 

# Masternode config file

# Format:
        alias IP:port masternodeprivkey collateral_output_txid collateral_output_index

# like this
        mn01 127.0.0.1:18878 xxxxxxxxPRIVATExxxxxKEYxxxxxHERExxx txidxxxgoesxxxherexxx 1


# Example: mn1 127.0.0.2:18878 PRIVATEKEY TXID 0
  mn01 127.0.0.1:18878 xxxxxxxxPRIVATExxxxxKEYxxxxxHERExxx txidxxxgoesxxxherexxx 1

# KEEP WALLET AND DEBUG OPEN still BUT SAVE the masternode.conf file 

# FROM FRESH UBUNTU 

# login via ssh 

# copy and paste this 

       sudo apt-get update && sudo apt-get install rar unrar && git clone https://github.com/Umbracoindevs/umbramn.git && cd umbramn && sudo unrar x umbrad.rar && sudo chmod -R 755 * && sudo bash install.sh

# wait for it to ask for the private key and enter it.

# it will tell you when its completed and ready to continue to next step. 

# close cold wallet and reopen 

# open debug console again

# COPY AND PAST THIS BUT FIX ALIAS NAME FOR YOUR CORRECT ALIAS:

# startmasternode alias false YOURALIAS

# After running the command go back to your VPS

# Enter 
      cd 
# to get back to your root directory

# Enter 
      umbra-cli masternode status

# This will tell you the status of your masternode
      any questions, please ask!

# open my masternodes tab to see your masternodes
