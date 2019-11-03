cd /var/www/html/unpr/tld-watch
PATH=/home/unpr/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/unpr/.dotnet/tools:/home/unpr/.dotnet/tools
curl -s "https://data.iana.org/TLD/tlds-alpha-by-domain.txt" | tail -n +2 >tlds-alpha-by-domain.txt
git add tlds-alpha-by-domain.txt
git commit -m "https://data.iana.org/TLD/tlds-alpha-by-domain.txt"
git push
git -c color.ui=always log -p --pretty -4 | aha -b -t "IANA TLD history." >/var/www/html/yamk/index.html
