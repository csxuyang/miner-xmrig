ps -ef|grep " rewards " |grep -v grep|cut -c 9-16|`xargs kill -9`
ps -ef|grep "ore_balance.sh" |grep -v grep|cut -c 9-16|`xargs kill -9`
nohup /root//miner-xmrig/ore_balance.sh > ore_balance.log  2>&1 &

