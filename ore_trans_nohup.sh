ps -ef|grep " transfer " |grep -v grep|cut -c 9-16|`xargs kill -9`
ps -ef|grep "ore_trans.sh" |grep -v grep|cut -c 9-16|`xargs kill -9`
nohup bash /root//miner-xmrig/ore_trans.sh > ore_trans.log  2>&1 &
