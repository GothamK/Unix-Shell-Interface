if [ $# -eq 0 ] ; then
clear
echo "           UNIX HELP MAIN MENU"
echo -e "\n"

echo "   1 -- File and Directory management commands"
echo "   2 -- Text Processing commands"
echo "   3 -- System status commands"
echo "   4 -- Exit  "
#echo -e "\n"
echo -e "\n"

echo -n "                Enter your choice: "
read choice
if [[ "$choice" -eq 1 ]] ; then
bash 1novice.sh
fi

if [[ "$choice" -eq 2 ]] ; then
bash 2novice.sh
fi

if [[ "$choice" -eq 3 ]] ; then
bash 3novice.sh
fi

if [[ "$choice" -eq 4 ]] ; then
clear
exit 0
fi
fi


if [ "$1" = "help" ] ; then
  bash myhelp.sh
fi

if [ "$1" = "file" ] ; then
  bash expert1.sh
fi

if [ "$1" = "text" ] ; then
  bash expert2.sh
fi

if [ "$1" = "status" ] ; then
  bash expert3.sh
fi
