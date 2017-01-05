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
8 - SimpleScreenRecorder   22 - FileZilla (FTP)                      37 - TRANSMAGEDDON (Conversor Videos)
9 - Workbeanch             23 - Codecs Multimidia                    38 - ARISTA (Conversor Videos)
10 - Docker 1.12           24 - Bleachbit (Limpeza)                  39 - CURLEW (Conversor Videos)
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
        sudo add-apt-repository ppa:tualatrix/next
        sudo apt-get update
        sudo apt-get install ubuntu-tweak
        ;;
    2)
        #Instalação de IDE CodeBlocks
        sudo add-apt-repository ppa:pasgui/ppa
        sudo apt-get update
        sudo apt-get install wx-common build-essential checkinstall cdbs devscripts dh-make fakeroot libxml-parser-perl check avahi-daemon codeblocks  ;;
    3)
        #Instalação de Editor de texto Atom
        sudo add-apt-repository ppa:webupd8team/atom
        sudo apt-get update
        sudo apt-get install atom
        ;;
    4)
        #Instalação de Editor de texto Sublime Text 2
        sudo add-apt-repository ppa:webupd8team/sublime-text-2
        sudo apt-get update
        sudo apt-get install sublime-text-2
        ;;

    5)
        #Instalação VLC Reprodutor de multimidia

        sudo add-apt-repository ppa:videolan/stable-daily
        sudo apt-get update
        sudo apt-get install vlc
        ;;
    6)
        #Instalação do ccleaner para ubuntu
        sudo add-apt-repository ppa:gerardpuig/ppa
        sudo apt-get update
        sudo apt-get install ubuntu-cleaner
        ;;
    7)
        #Instalar NetBeans (IDE)
        sudo add-apt-repository ppa:vajdics/netbeans-installer
        sudo apt-get update
        sudo apt install netbeans-installer
        ;;
    8)
        #instalar o SimpleScreenRecorder
        sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder
        sudo apt-get update
        sudo apt-get install simplescreenrecorder
        ;;
    9)
        #instalação do gerenciador de DB Work-Beach
        sudo apt-get install mysql-workbench
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
        sudo apt-get install gdebi
        wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
        sudo gdebi google-chrome-stable_current_amd64.deb
        ;;

    12)
        #Instalação Navegador Firefox Aurora (Developer)
        sudo apt-get purge firefox
        sudo add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora
        sudo apt-get update
        sudo apt-get install firefox
        ;;

    13)
        #Instalação do GIT ( Controle de versão)
        sudo apt-get update
        sudo apt-get install git git-flow
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
        sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
        sudo apt-get update
        sudo apt-get install qbittorrent
        ;;

    16)
        # Instalar Wine
        sudo add-apt-repository ppa:ricotz/unstable
        sudo apt-get update
        sudo apt-get install wine1.8 winetricks
        ;;

    17)
        # Instalar 7zip
        sudo apt-get install p7zip p7zip-full
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

        #sudo apt-get install curl php5-cli git
        #curl -sS https://getcomposer.org/installer
        #sudo php -- --install-dir=/usr/local/bin --filename=composer

        sudo apt-get install curl
        curl -sS https://getcomposer.org/installer
        sudo mv composer.phar /usr/local/bin/composer


        ;;
    20)
        #Instalando o DVDStyler
        sudo add-apt-repository ppa:ubuntuhandbook1/dvdstyler
        sudo apt-get update
        sudo apt-get install dvdstyler
        ;;
    21)
        #Instalando o GIMP
        sudo add-apt-repository ppa:otto-kesselgulasch/gimp
        sudo apt-get update
        sudo apt-get install gimp
        ;;
    22)
        #Instalando o FileZilla
        sudo apt-get install filezilla
        ;;
    23)
        #Instalando o Codecs Multimidia
       sudo apt install ubuntu-restricted-extras
        ;;
    24)
        #Instalando o Bleachbit  Limpeza Sistema
       sudo apt install bleachbit
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
        sudo apt-get install spotify-client
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
        sudo add-apt-repository ppa:vlijm/spaceview
        sudo apt update
        sudo apt install spaceview
        ;;
    30)
        # Instalar systemback
        sudo apt-add-repository ppa:nemh/systemback
        sudo apt update
        sudo apt-get install systemback
        ;;

     31)
        # Instalar mixxx
        sudo apt-get install mixxx
        ;;
    32)
        # Instalar Audacity
        sudo apt-get install audacity
        ;;
    33)
        # Instalar audio-recorder
        sudo apt-add-repository ppa:osmoma/audio-recorder
        sudo apt-get update
        sudo apt-get install audio-recorder
        ;;
    34)
        # Instalar kazam Gravação de tela
        sudo add-apt-repository ppa:kazam-team/stable-series
        sudo apt-get update
        sudo apt-get install kazam
        ;;
    35)
        # O ClipGrab é um programa escrito em GTK para Ubuntu e Linux Mint que tem como proposta ser o mais simples quanto possível.
        # Basta digitar na busca o título do vídeo que você deseja baixar, dando dois cliques em cima do mesmo na aba de download
        # é possível escolher a qualidade do vídeo ou se você deseja apenas baixar o MP3.

        sudo add-apt-repository ppa:clipgrab-team/ppa
        sudo apt-get update
        sudo apt-get install clipgrab
        ;;
   36)
        # instalar o GRUB Customizer no Ubuntu ou no Linux Mint
        # O GRUB é o gerenciador de Boot da maior parte das distribuições Linux, apesar de não ser o único, existem outras
        # alternativas como o BURG e o Lillo, ele certamente é o mais popular, por conta disso, você pode querer personalizá-lo para deixá-lo ao seu gosto
        # , mudar a resolução, o tempo de espera, o tema, entra outras coisas.
        # Aprenda a instalar o GRUB Customizer, uma ferramenta para você configurar o GRUB graficamente.

        sudo add-apt-repository ppa:danielrichter2007/grub-customizer
        sudo apt-get update
        sudo apt-get install grub-customizer
    ;;
   37)
       # O Transmageddon suporta quase todos os formatos de vídeo.
       # É um conversor de vídeo para Linux baseado em GStreamer (um framework para desenvolvimento de aplicações que lidam
       # streams multimedia, como áudio e vídeo). Portanto, o objetivo da aplicação é para ajudar as pessoas a converterem
        # seus arquivos, sem ter que recorrer a ferramentas de linha de comando!
        sudo apt-get install transmageddon
    ;;
   38)
       #Arista é uma ferramenta simples que converte arquivos de vídeo facilmente.
       # Ele é oficialmente construído para GNOME. Ele suporta MP4, WebM, Matroska, AVI, Ogg, FLV
       # (codecs de vídeo: H.264 -, VP8, MPEG4 / DivX, MPEG2, Theora, o Flash Video / áudio: AAC, Vorbis, MP3, FLAC, Speex, WAV).
         sudo add-apt-repository ppa:webupd8team/arista
         sudo apt-get update
         sudo apt-get install arista
    ;;

  39)
        # Curlew é um conversor gratuito para Linux. É escrito em Python e GTK3 e baseado ffmpeg.
        # Ele é fácil de usar, pois uma interface simples. Além disso, é possível converter mais de 100 formatos diferentes.
         sudo add-apt-repository ppa:upubuntu-com/multimedia
         sudo apt-get update
         sudo apt-get install curlew
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
