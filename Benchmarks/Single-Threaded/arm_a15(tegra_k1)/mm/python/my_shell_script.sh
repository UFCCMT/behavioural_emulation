#! /bin/bash

sshpass -p "KCheng888" ssh -o StrictHostKeyChecking=no cheng@128.227.92.82 \
"cd /home/cheng/mm; ./mm_udn $1 $2"


exit 0