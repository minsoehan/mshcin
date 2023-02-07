#!/bin/dash

hdir=$(dirname $0)

case $1 in
    getcurbl)
        echo "Screen* $(brightnessctl | awk -F '[()]' '/Current brightness: / {print $2}')" > $hdir/iwaited/screenbl
        ;;
    setbl)
        echo "Screen* $(brightnessctl set $2 | awk -F '[()]' '/Current brightness: / {print $2}')" > $hdir/iwaited/screenbl
        ;;
    incbl)
        echo "Screen* $(brightnessctl set +10% | awk -F '[()]' '/Current brightness: / {print $2}')" > $hdir/iwaited/screenbl
        ;;
    decbl)
        echo "Screen* $(brightnessctl set 10%- | awk -F '[()]' '/Current brightness: / {print $2}')" > $hdir/iwaited/screenbl
        ;;
    *)
        echo "Do one of them following;"
        echo "$ screenblconsole getcurbl"
        echo "$ screenblconsole set 60%"
        echo "$ screenblconsole incbl"
        echo "$ screenblconsole decbl"
        ;;
esac
