clear
echo "                 TEXT PROCESSING COMMANDS"
echo -e "\n"
echo -e "\n"
echo " 1 -- Search a file for a pattern"
echo " 2 -- Count lines , words , characters in specified files"
echo " 3 -- Display line differences between two files"
echo " 4 -- Exit program"
echo -e "\n"
breaker=1
while [ "$breaker" -eq 1 ]
do
echo -n "               Enter your choice:"
read f


if [[ $f -eq 4 ]] ; then
breaker=2
clear
exit 0
fi


if [[ $f -eq 1 ]] ; then
echo -n "enter the file pattern:"
read pattern
ls | grep "$pattern"
fi


if [[ $f -eq 3 ]] ; then
echo -n "enter the name of first file or it's path :"
read file1
echo -n "enter the name of second file or it's path:"
read file2
if [[ -f $file1 ]]&&[[ -f $file2 ]] ; then
diff "$file1" "$file2"
else
  echo "again typos! (^_-)"
fi
fi

if [[ $f -eq 2 ]] ; then
echo "enter the filename or it's path:"
read filename
if [[ -f $filename ]] ; then
echo -n "LINE COUNT:"
wc -l "$filename"| awk '{print $1}'
echo -n "WORD COUNT:"
wc -w "$filename"| awk '{print $1}'
echo -n "CHARACTER COUNT:"
wc -c "$filename"| awk '{print $1}'
else
echo "typos typos typos....."
fi
fi

done
