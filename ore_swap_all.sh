#!/bin/bash
i=$1;
while [ $i -lt 110 ];
do
   echo $i;
   address=`cat /root/addr/id$i.json`
   key=`cat /root/key/id$i.json`
   /root/raydium-swap/swap.sh $key $address
   i=`expr $i + 1`;
done
