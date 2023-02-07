#!/bin/dash
hdir=$(dirname $0)
bnst=$(cat $hdir/iwaited/batnotistate)
if [ "$bnst" = "Noti-on" ]; then
    echo "Noti-off" > $hdir/iwaited/batnotistate
else
    echo "Noti-on" > $hdir/iwaited/batnotistate
fi
