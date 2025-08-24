ls -d -1 $1/* | grep -v $1.txt | xargs -P10 -I {} sh grepPattern.sh {} "$2"

