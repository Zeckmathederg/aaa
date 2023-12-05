

GREEN="\[\e[1;32m\]"
if [[ $EUID == 0 ]] ; then
  PS1="$RED\u [ $NORMAL\w$RED ]# $NORMAL"
else
  PS1="$GREEN\u [ $NORMAL\w$GREEN ]\$ $NORMAL"
fi








for script in /etc/profile.d/*.sh ; do
        if [ -r $script ] ; then
                . $script
        fi
done








unset script RED GREEN NORMAL








# End /etc/profile
EOF
