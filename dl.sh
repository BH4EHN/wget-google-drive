#!/bin/sh
id=$1
name=$2
code=$(wget --save-cookies cookies.txt --keep-session-cookies 'https://docs.google.com/uc?export=download&id='$id'' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1/p')
echo $code
wget -O $2 --load-cookies cookies.txt 'https://docs.google.com/uc?export=download&confirm='$code'&id='$id''
rm cookies.txt
