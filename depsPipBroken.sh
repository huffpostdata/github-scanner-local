
cat dependencies/pip/$1.txt | awk -F '/' '{print $1}' | xargs -P5 -I {} sh pip-name.sh {} | tee -a dependencies/pip/$1-available.txt


