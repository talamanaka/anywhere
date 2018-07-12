passwd root

apt update && apt install byobu nano xauth software-properties-common locate rdesktop  xterm xrdp  firefox xvfb -y

apt-add-repository ppa:ubuntu-mate-dev/ppa -y && apt-add-repository ppa:ubuntu-mate-dev/trusty-mate 

locale-gen en_US.UTF-8


rm /var/cache/apt/archives/*

echo "X11UseLocalhost no" >>  /etc/ssh/sshd_config

sed -i -e '/^PasswordAuthentication/s/^.*/PasswordAuthentication yes/' /etc/ssh/sshd_config

service ssh restart

apt-add-repository ppa:ubuntu-mate-dev/ppa -y && apt-add-repository ppa:ubuntu-mate-dev/trusty-mate -y && apt-get update

apt install  mate-core mate-desktop-environment mate-notification-daemon -y

 wget https://fonts.google.com/download?family=Ubuntu -O 1.zip && unzip 1.zip

mkdir /usr/local/share/fonts/ms_fonts
mv *.ttf /usr/local/share/fonts/ms_fonts/
chmod 755 /usr/local/share/fonts/ms_fonts
chmod 644 /usr/local/share/fonts/ms_fonts/* -R

