sudo apt install samba -y
mkdir /home/$USER/shared/
sudo echo "[sambashare]
      comment = Shared folder
      path = /home/$USER/shared/
      read only = no
      browsable = yes" >> /etc/samba/smb.conf
