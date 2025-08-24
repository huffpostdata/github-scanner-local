GITHUB_TOKEN=$2
cat results-github-workflow/$1.txt | xargs -P100 -I {} sh ../bash-scripts/curl/scan-broken.sh {} | tee -a results-github-workflow/$1-broken.txt

