#cat dependencies/npm/$1.txt | awk -F ' ' '{print "https://registry.yarnpkg.com/"$1}' | xargs -P100 -I {} sh ../bash-scripts/curl/scan-broken.sh {} | tee -a dependencies/npm/$1-broken.txt

cat dependencies/npm/$1.txt | tr -d '\r' | sort | uniq | xargs -P5 -I {} npm-name {} | tee -a dependencies/npm/$1-available.txt


