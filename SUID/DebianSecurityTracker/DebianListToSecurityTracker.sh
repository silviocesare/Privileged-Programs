#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: $0 listDirectory"
	exit 1
fi
echo "---BEGIN"
for i in $1/*___priv; do
	b=$(basename $i)
	c=$(echo $b|sed -e 's/___priv$//g')
	p=$(echo $b|cut -d_ -f1)
	echo $p
	cat $i|sed -e 's/^/\t- /g'
	echo -e "\tNOTE: checked in lenny $c"
done
