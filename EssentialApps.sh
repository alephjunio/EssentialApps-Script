#!/bin/bash

while true; do
echo "==========================================================
        Digite o número do componente a ser instalado:
       
1 - Ubuntu Tweak          11 - Chrome                   21 - Gimp (Editor de Imgens)  
2 - Codeblocks            12 - Firefox Aurora           22 - FileZilla (FTP)  
3 - Atom                  13 - Git & Gitflow
4 - Sublime Text 2        14 - 4K Video Downloader
5 - VLC player            15 - qBittorrent
6 - Ubuntu CClear         16 - Wine 
7 - Netbeans 8.0          17 - 7Zip 
8 - SimpleScreenRecorder  18 - drush (Drupal)
9 - Workbeanch            19 - Composer(Gerente Dependências PHP)
10 - Docker 1.12          20 - DVDStyler 

       0 - Sair

==========================================================="
echo -n "->OPÇÃO:  "

read opcao

#verificar se foi digitada uma opcao
if [ -z $opcao ]; then
    echo "ERRO: digite uma opcao"
    exit
fi

case $opcao in
    1)
        #Instalação de ubuntu-tweak de Personalização do Ubuntu
        sudo add-apt-repository ppa:tualatrix/next -y
        sudo apt-get update
        sudo apt-get install ubuntu-tweak -y
        ;;
    2)  
        #Instalação de IDE CodeBlocks
        sudo add-apt-repository ppa:pasgui/ppa -y
        sudo apt-get update
        sudo apt-get install wx-common build-essential checkinstall cdbs devscripts dh-make fakeroot libxml-parser-perl check avahi-daemon codeblocks -y;;
    3)  
        #Instalação de Editor de texto Atom
        sudo add-apt-repository ppa:webupd8team/atom -y 
        sudo apt-get update
        sudo apt-get install atom -y
        ;;
    4)  
        #Instalação de Editor de texto Sublime Text 2
        sudo add-apt-repository ppa:webupd8team/sublime-text-2 -y
        sudo apt-get update
        sudo apt-get install sublime-text-2 -y
        ;;

    5)  
        #Instalação VLC Reprodutor de multimidia

        sudo add-apt-repository ppa:videolan/stable-daily
        sudo apt-get update
        sudo apt-get install vlc -y
        ;;
    6)  
        #Instalação do ccleaner para ubuntu
        sudo add-apt-repository ppa:gerardpuig/ppa -y
        sudo apt-get update
        sudo apt-get install ubuntu-cleaner -y
        ;;
    7) 
        #Instalar NetBeans (IDE)
        sudo add-apt-repository ppa:vajdics/netbeans-installer -y
        sudo apt-get update
        sudo apt install netbeans-installer -y  
        ;;
    8)  
        #instalar o SimpleScreenRecorder
        sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder -y
        sudo apt-get update
        sudo apt-get install simplescreenrecorder -y
        ;;
    9)  
        #instalação do gerenciador de DB Work-Beach
        sudo apt-get install mysql-workbench -y
        ;;
    10) 
        # Instalação docker (LXC - Containers)
         sudo apt-get update
         sudo apt-get install apt-transport-https ca-certificates
         sudo apt-key adv \
               --keyserver hkp://ha.pool.sks-keyservers.net:80 \
               --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
         sudo apt-get install docker-engine
         sudo service docker start
         sudo groupadd docker
         sudo usermod -aG docker $USER
         docker run hello-world       
          ;;

    11) 
        # Instalação do Navegador Chrome
        sudo apt-get install gdebi -y
        wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
        sudo gdebi google-chrome-stable_current_amd64.deb 
        ;;

    12) 
        #Instalação Navegador Firefox Aurora (Developer)
        sudo apt-get purge firefox
        sudo add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora -y
        sudo apt-get update
        sudo apt-get install firefox -y
        ;;
    
    13) 
        #Instalação do GIT ( Controle de versão)
        sudo apt-get update
        sudo apt-get install git git-flow -y
        ;;

    14) 
    
        echo "==================================================
            Seu Sistema é 32 bits ou 64 bits
            1) - 32 bits
            2) - 64 bits
=================================================="
        echo -n "->OPÇÃO:  "

        read version

        if [ -z $version ]; then
          echo "Você tem de entrar com um parâmetro válido"
          exit
        elif [ $version = 1 ]; then
          
          sudo apt-get install dpkg
          wget https://downloads.4kdownload.com/app/4kvideodownloader_4.1-1_i386.deb
          sudo dpkg -i 4kvideodownloader_4.1-1_i386.deb

        elif [ $version = 2 ]; then

          sudo apt-get install dpkg
          wget https://downloads.4kdownload.com/app/4kvideodownloader_4.1-1_amd64.deb
          sudo dpkg -i 4kvideodownloader_4.1-1_amd64.deb


        else
          echo "Você tem de entrar com um parâmetro válido"
        fi

        ;;


        
    15) 
        # Instalar qBittorrent 
        sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
        sudo apt-get update 
        sudo apt-get install qbittorrent -y
        ;;

    16) 
        # Instalar Wine 
        sudo add-apt-repository ppa:ricotz/unstable -y
        sudo apt-get update 
        sudo apt-get install wine1.8 winetricks -y
        ;;

    17) 
        # Instalar 7zip 
        sudo apt-get install p7zip p7zip-full -y
        ;;
    18) 
        #Instalando / Atualizando Drush no Ubuntu
        sudo apt-get install drush
        sudo drush dl drush --destination='/usr/share'
        drush --version
        ;;
    19) 
        #Instalando Composer 
        # sudo apt-get install composer
        sudo apt-get install curl php5-cli git -y
        curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
        ;;
    20) 
        #Instalando o DVDStyler
        sudo add-apt-repository ppa:ubuntuhandbook1/dvdstyler -y
        sudo apt-get update
        sudo apt-get install dvdstyler -y
        ;;
    21) 
        #Instalando o GIMP
        sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
        sudo apt-get update
        sudo apt-get install gimp -y
        ;;
    21) 
        #Instalando o FileZilla
        sudo apt-get install filezilla -y
        ;;

    0)
        echo "Saindo..."
        exit;;
    *)
        echo
        echo "ERRO: opção inválida"
        echo ;;
esac
done
