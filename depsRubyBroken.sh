
cat dependencies/ruby/$1.txt | awk -F '/' '{print $1}' | xargs -P5 -I {} sh ruby-name.sh {} | tee -a dependencies/ruby/$1-available.txt


