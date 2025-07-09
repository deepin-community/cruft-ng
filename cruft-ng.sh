#!/bin/sh
[ -e "/home/$USER/cruft-ng.log" ] && mv "/home/$USER/cruft-ng.log" "/home/$USER/cruft-ng.log.old"
if [ -x cruft-ng ]
then
	sudo ./cruft-ng > "/home/$USER/cruft-ng.log"
else
	sudo cruft-ng > "/home/$USER/cruft-ng.log"
fi
ls -l /home/$USER/cruft-ng.log*
[ -e "/home/$USER/cruft-ng.log.old" ] && colordiff -u "/home/$USER/cruft-ng.log.old" "/home/$USER/cruft-ng.log"
