#!/bin/bash -ex

# Script compiled from https://wiki.blissroms.org/index.php?title=Bliss_OS/Compiling_Bliss_OS

sudo apt update
sudo apt upgrade
sudo apt install openjdk-8-jdk git gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev lib32z1-dev ccache libgl1-mesa-dev libxml2 libxml2-utils xsltproc unzip squashfs-tools python python-mako libssl-dev ninja-build lunzip syslinux syslinux-utils gettext genisoimage bc xorriso liblz4-tool libncurses5-dev libsdl1.2-dev libwxgtk3.0-dev lzop maven pngcrush schedtool lib32readline-dev
mkdir -p ~/bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
export PATH=~/bin:$PATH
source ../.bashrc
mkdir -p ~/bliss/q
cd ~/bliss/q
git config --global user.email "kevin@littlejohn.id.au"
git config --global user.name "Kevin Littlejohn"
#repo init -u https://github.com/BlissRoms-x86/manifest.git -b bliss-os-lite
repo sync --no-tags --no-clone-bundle --prune -c -j$(nproc --all) --optimized-fetch

#build-x86 -s
#build-x86 -r android_x86_64-user
#build-x86 android_x86_64-user