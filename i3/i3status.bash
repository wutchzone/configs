#!/bin/bash
i3status -c ~/dotfiles/i3/i3status.conf | while :
do
    read line
    id=$(xprop -root | awk '/_NET_ACTIVE_WINDOW\(WINDOW\)/{print $NF}')
    name=$(xprop -id $id | awk '/_NET_WM_NAME/{$1=$2="";print}' | cut -d'"' -f2)
    node -e 'var carry=process.argv[1];try{var obj=JSON.parse(carry.slice(1,carry.length));if(obj instanceof Array){obj=[{name:"app_name",markup:"none",full_text:process.argv[2]}].concat(obj)};console.log((obj instanceof Array ? ",":"")+JSON.stringify(obj))}catch{console.log(carry)}' -- "$line" "$name"
done

