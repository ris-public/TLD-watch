curl -s "https://data.iana.org/TLD/tlds-alpha-by-domain.txt" | tail -n +2 >tlds-alpha-by-domain.txt
git add tlds-alpha-by-domain.txt
git commit -m "https://data.iana.org/TLD/tlds-alpha-by-domain.txt"
git push
git -c color.ui=always log -p --pretty -2 | aha -b >/var/www/html/yamk/index.html
