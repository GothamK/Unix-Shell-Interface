clear
echo "                FILE AND DIRECTORY MANAGEMENT COMMANDS"
echo -e "\n"
echo -e "\n"
echo " 1 -- Display the contents of a file"
echo " 2 -- Remove a file"
echo " 3 -- Copy a file"
echo " 4 -- List a file"
echo " 5 -- Size of a file"
echo " 6 -- Exit program"
echo -e  "\n"
breaker=1
while [ "$breaker" -eq 1 ]
do
echo -n "               Enter your choice:"
read f


if [[ $f -eq 6 ]] ; then
breaker=2
clear
exit 0
fi


if [[ $f -eq 2 ]] ; then
echo -e "Enter the filename \n or filepath(if the file isn't in the same directory) to remove:"
read filename
if [ -f $filename ] ; then
  rm "$filename"
else
  echo "Seems the file doesn't exist! any typos??"
fi
fi


if [[ $f -eq 1 ]] ; then
echo -e "Enter the filename \n or filepath(if the file isn't in the same directory) to display:"
read filenamer
if [ -f $filenamer ] ; then
  more "$filenamer"
else
  echo "Seems the file doesn't exist! any typos??"
fi
fi


if [[ $f -eq 5 ]] ; then
echo -e "Enter the filename \n or filepath(if the file isn't in the same directory) to show it's size:"
read filenamerr
if [ -f $filenamerr ] ; then
  ls -h -l "$filenamerr" | awk '{print $5}'
else
  echo "Seems the file doesn't exist! any typos??"
fi
fi


if [[ $f -eq 4 ]] ; then
echo -e "Enter the filename \n or filepath(if the file isn't in the same directory) to List:"
read filenamerrr
if [ -f $filenamerrr ] ; then
  ls -l "$filenamerrr"
else
  echo "Seems the file doesn't exist! any typos??"
fi
fi


if [[ $f -eq 3 ]] ; then
echo -e "Enter the filename \n or filepath(if the file isn't in the same directory) to copy:"
read filenamerrr
if [ -f $filenamerrr ] ; then
  echo "enter the destination path:"
  read journey
  cp $filenamerrr $journey
else
  echo "Seems the file doesn't exist! any typos??"
fi
fi

done
