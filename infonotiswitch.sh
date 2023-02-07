#!/bin/dash

# getting dir path where this script exists
# even it is excuted through symlink
dir="$(dirname "$(readlink -f "$0")")"

case $1 in
    toggle)
        "$dir"/infonotitoggle.sh &
        ;;
    bntoggle)
        "$dir"/batnotitoggle.sh
        ;;
    startloops)
        "$dir"/loopswitch.sh startloops &
        ;;
    stoploops)
        "$dir"/loopswitch.sh stoploops &
        ;;
    slink)
        ln -s "$dir"/infonotiswitch.sh $2 > /dev/null 2>&1
        # getting the user's PATH
        # $ echo $PATH | sed 's/:/\n/g' | grep '/home/'
        ;;
    *)
        echo "Do one of them below;"
        echo "$ mshinfonoti toggle --- to toggle infonoti"
        echo "$ mshinfonoti bntoggle --- to toggle battery noti"
        echo "$ mshinfonoti startloops --- to start loops"
        echo "$ mshinfonoti stoploops --- to stop loops"
        echo "$ mshinfonoti slink /file/path/symlinkname --- to stop loops"
        ;;
esac
