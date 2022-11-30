#!/bin/bash

python3 environments.py

File="environments.txt"

while read Environment;
do
    printf -v Date '%(%Y-%m-%d)T\n' -1
    Exportname="./exports/$Environment-$Date"
    contentful space --space-id 'enter your space id' export --environment-id $Line --download-assets --include-drafts --max-allowed-limit 50 --content-only --content-file $Exportname
done < environments.txt