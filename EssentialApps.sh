#!/bin/bash

while true; do
echo "=======================================================================================================================
        Digite o número do componente a ser instalado:

1 - Ubuntu Tweak           16 - Wine                                 30 - Systemback (BACKUP)
2 - Codeblocks             17 - 7Zip                                 31 - Mixxx (DJ)
3 - Atom                   18 - drush (Drupal)                       32 - Audacity
4 - Sublime-Text 2         19 - Composer(Gerente Dependências PHP)   33 - Audio Recorder
5 - VLC player             29 - Space View Indicator                 34 - Kazam Screencaster (Gravar Tela)
6 - Ubuntu CClear          20 - DVDStyler                            35 - ClipGrab (Downloads)
7 - Netbeans               21 - Gimp (Editor de Imgens)              36 - GRUB Customizer
8 - SimpleScreenRecorder   22 - FileZilla (FTP)
9 - Workbeanch             23 - Codecs Multimidia
10 - Docker 1.12           24 - Bleachbit (Limpeza)
11 - Chrome                25 - Steam (Games)
12 - Firefox Aurora        26 - Spotify (Music Online)
13 - Git & Gitflow         27 - WPS Office
14 - 4K Video Downloader   28 - PlayOnLinux
15 - qBittorrent           29 - SpaceView
=========
0 - Sair |
======================================================================================================================"
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

        #sudo apt-get install curl php5-cli git -y
        #curl -sS https://getcomposer.org/installer
        #sudo php -- --install-dir=/usr/local/bin --filename=composer

        sudo apt-get install curl
        curl -sS https://getcomposer.org/installer
        sudo mv composer.phar /usr/local/bin/composer


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
    22)
        #Instalando o FileZilla
        sudo apt-get install filezilla -y
        ;;
    23)
        #Instalando o Codecs Multimidia
       sudo apt install ubuntu-restricted-extras -y
        ;;
    24)
        #Instalando o Bleachbit  Limpeza Sistema
       sudo apt install bleachbit -y
        ;;
    25)
        #Instalando o Steam (Games)
        sudo apt-get install dpkg
        wget http://repo.steampowered.com/steam/archive/precise/steam_latest.deb
        sudo dpkg -i steam_latest.deb
        ;;

     26)
        # Instalar Spotify
        sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 && echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
        sudo apt-get update
        sudo apt-get install spotify-client -y
        ;;

       27)

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
          wget http://kdl.cc.ksosoft.com/wps-community/download/a21/wps-office_10.1.0.5672~a21_i386.deb
          sudo dpkg -i wps-office_10.1.0.5672~a21_i386.deb
          echo " Tradução em PT-BR"
          echo " Link http://www.mediafire.com/download/36td09x94m2x4vh/wps-office-mui-pt-br_1.1.0-0kaiana1_all.deb "

        elif [ $version = 2 ]; then

          sudo apt-get install dpkg
          wget http://kdl.cc.ksosoft.com/wps-community/download/a21/wps-office_10.1.0.5672~a21_amd64.deb
          sudo dpkg -i wps-office_10.1.0.5672~a21_amd64.deb
          echo " Tradução em PT-BR"
          echo " Link http://www.mediafire.com/download/36td09x94m2x4vh/wps-office-mui-pt-br_1.1.0-0kaiana1_all.deb "


        else
          echo "Você tem de entrar com um parâmetro válido"
        fi

        ;;

    28)
        # Instalar PlayOnLinux
        sudo apt-get install dpkg
        wget https://www.playonlinux.com/script_files/PlayOnLinux/4.2.10/PlayOnLinux_4.2.10.deb
        sudo dpkg -i PlayOnLinux_4.2.10.deb
        ;;

    29)
        # Instalar spaceview
        sudo add-apt-repository ppa:vlijm/spaceview -y
        sudo apt update
        sudo apt install spaceview -y
        ;;
    30)
        # Instalar systemback
        sudo apt-add-repository ppa:nemh/systemback -y
        sudo apt update
        sudo apt-get install systemback -y
        ;;

     31)
        # Instalar mixxx
        sudo apt-get install mixxx -y
        ;;
    32)
        # Instalar Audacity
        sudo apt-get install audacity -y
        ;;
    33)
        # Instalar audio-recorder
        sudo apt-add-repository ppa:osmoma/audio-recorder  -y
        sudo apt-get update
        sudo apt-get install audio-recorder -y
        ;;
    34)
        # Instalar kazam Gravação de tela
        sudo add-apt-repository ppa:kazam-team/stable-series -y
        sudo apt-get update
        sudo apt-get install kazam -y
        ;;
    35)
        # O ClipGrab é um programa escrito em GTK para Ubuntu e Linux Mint que tem como proposta ser o mais simples quanto possível.
        # Basta digitar na busca o título do vídeo que você deseja baixar, dando dois cliques em cima do mesmo na aba de download
        # é possível escolher a qualidade do vídeo ou se você deseja apenas baixar o MP3.

        sudo add-apt-repository ppa:clipgrab-team/ppa -y
        sudo apt-get update
        sudo apt-get install clipgrab -y
        ;;
   36)
        # instalar o GRUB Customizer no Ubuntu ou no Linux Mint
        # O GRUB é o gerenciador de Boot da maior parte das distribuições Linux, apesar de não ser o único, existem outras
        # alternativas como o BURG e o Lillo, ele certamente é o mais popular, por conta disso, você pode querer personalizá-lo para deixá-lo ao seu gosto
        # , mudar a resolução, o tempo de espera, o tema, entra outras coisas.
        # Aprenda a instalar o GRUB Customizer, uma ferramenta para você configurar o GRUB graficamente.

        sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
        sudo apt-get update
        sudo apt-get install grub-customizer -y
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
