#!/bin/bash

mkdir -p exp
cd exp

echo "Downloading exp.zip from https://drive.google.com/file/d/1vz8n1daLZj8nKhsESbh-wGAa-ZlqUhu0/view?usp=sharing"
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=FILEID' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1vz8n1daLZj8nKhsESbh-wGAa-ZlqUhu0" -O exp.zip && rm -rf /tmp/cookies.txt
unzip exp.zip
rm exp.zip


