#!/bin/bash

#Script pour installer mes configs vers un nouveau poste
echo "Creation des dossiers bin, cegep, projets"
cd ~
if [ ! -d "bin"]; then
    mkdir bin
fi

if [ ! -d "cegep"]; then
    mkdir cegep
fi

if [ ! -d "projets"]; then
    mkdir projets
fi

#Programmes a installer
echo "Installation des packages"
programmes="git vim gcc gdb python3 python3-pip python3-venv code"
sudo pacman -Syu --noconfirm $programmes

#Copie les dotfiles contenus dans le dossier et les appliquent sur ceux deja present dans la machine
echo "Application des dotfiles"
cp .bashrc ~/.bashrc
cp .gitconfig ~/.gitconfig

echo "Instalation de mes parametres termine"