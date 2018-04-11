#!/bin/bash

if [ ! -d /etc/skel/.config ]; then
  echo
  echo ":: Les profils par défaut ne sont pas installés."
  echo
  exit 1
fi

echo

for UTILISATEUR in $(ls /home); do
  echo ":: Mise à jour du profil de l'utilisateur $UTILISATEUR."
  rm -rf /home/$UTILISATEUR/.config
  cp -R /etc/skel/.config /home/$UTILISATEUR/
  cp /etc/skel/.gtkcdlabelrc /home/$UTILISATEUR/
  cp /etc/skel/.xscreensaver /home/$UTILISATEUR/
  chown -R $UTILISATEUR:$UTILISATEUR /home/$UTILISATEUR/.config
  chown $UTILISATEUR:$UTILISATEUR /home/$UTILISATEUR/.gtkcdlabelrc
  chown $UTILISATEUR:$UTILISATEUR /home/$UTILISATEUR/.xscreensaver
done

echo
exit 0
