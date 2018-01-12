#!/bin/bash
#
# profil.sh
#
# Profil par défaut pour les utilisateurs du bureau Xfce.
# 
# (c) Niki Kovacs, 2018

CWD=$(pwd)

rm -rf /etc/skel/.config

echo ":: Installation du profil par défaut."
tar xvjf $CWD/config/xfce/config.tar.bz2 -C /etc/skel/

echo

exit 0

